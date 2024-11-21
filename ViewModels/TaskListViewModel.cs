using FinLockerTaskList.Models;
using FinLockerTaskList.Services;
using FinLockerTaskList.Views;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;

namespace FinLockerTaskList.ViewModels;

public class TaskListViewModel : BaseViewModel, INotifyPropertyChanged
{
    private ObservableCollection<TaskItem> _tasks;
    private readonly TaskListService _taskListService;
    public ObservableCollection<TaskItem> Tasks
    {
        get => _tasks;
        set {
            _tasks = value;
            OnPropertyChanged();
        }
    }

    public ICommand AddTaskCommand { get; private set; }
    public ICommand RemoveTaskCommand { get; private set; }
    public ICommand EditTaskCommand { get; private set; }

    public TaskListViewModel(List<TaskItem> tasks)
    {
        _tasks = new ObservableCollection<TaskItem>(tasks) ?? [];
        AddTaskCommand = new Command(AddTask);
        RemoveTaskCommand = new Command(RemoveTask);
        EditTaskCommand = new Command(EditTask);
        _taskListService = new TaskListService(Tasks);
    }

    public TaskListViewModel() : this([]) {}

    private async void AddTask()
    {
        var addTaskPage = new AddTaskPage();
        await Shell.Current.Navigation.PushModalAsync(addTaskPage);
        var result = await addTaskPage.TaskCompletionSource.Task;
        if (result != null)
        {
            var newTask = new TaskItem(result.Id, result.Title, result.Description, result.Status);
            _taskListService.AddTaskItem(newTask);
            Tasks.Add(newTask);
        }
    }

    private async void RemoveTask(object taskId)
    {
        if (taskId is not Guid id) return;

        var existingTask = _tasks.FirstOrDefault(t => t.Id == id);
        if (existingTask != null)
        {
            if (DeviceInfo.Platform == DevicePlatform.iOS)
            {
                if (Application.Current?.MainPage != null)
                {
                    bool confirm = await Application.Current.MainPage.DisplayAlert("Confirm Removal", "Are you sure you'd like to delete?", "Yes", "No");
                    if (confirm) _taskListService.RemoveTask(existingTask.Id);
                } else {
                    Console.WriteLine("MainPage is null");
                }
            }
            else _taskListService.RemoveTask(existingTask.Id);
        }
    }

    private async void EditTask(object taskId)
    {
        if (taskId is not Guid id) return;

        var existingTask = _tasks.FirstOrDefault(t => t.Id == id);
        if (existingTask != null)
        {
            var editTaskPage = new EditTaskPage(existingTask);
            await Shell.Current.Navigation.PushModalAsync(editTaskPage);
            var result = await editTaskPage.TaskCompletionSource.Task;
            if (result != null)
            {
                existingTask.Title = result.Title;
                existingTask.Description = result.Description;
                existingTask.Status = result.TaskStatus;
                if (DeviceInfo.Platform == DevicePlatform.Android && result.TaskStatus == "Complete") {
                    var toast = Toast.Make("Task marked as complete", ToastDuration.Short, 14);
                    await toast.Show();
                }

                _taskListService.UpdateTaskItem(id, result);
            }
        }
    }
}