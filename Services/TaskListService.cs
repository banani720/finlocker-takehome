using FinLockerTaskList.DTOs;
using FinLockerTaskList.Models;
using System.Collections.ObjectModel;



namespace FinLockerTaskList.Services;

public class TaskListService(ObservableCollection<TaskItem> tasks)
{
    public TaskItem AddTaskItem(TaskItem item)
    {
        _ = tasks.Append(item);
        return item;
    }

    public void UpdateTaskItem(Guid taskId, EditTaskDTO updatedTaskItem)
    {
        var existingTask = tasks.FirstOrDefault(t => t.Id == taskId);
        if (existingTask != null)
        {
            existingTask.Title = updatedTaskItem.Title;
            existingTask.Description = updatedTaskItem.Description;
            existingTask.Status = updatedTaskItem.TaskStatus;
        }
    }

    public void RemoveTask(Guid taskId)
    {
        var existingTask = tasks.FirstOrDefault(t => t.Id == taskId);
        if (existingTask != null)
        {
            tasks.Remove(existingTask);
        }
    }
}