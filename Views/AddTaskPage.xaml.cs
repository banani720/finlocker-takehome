using FinLockerTaskList.DTOs;

namespace FinLockerTaskList.Views;

public partial class AddTaskPage : ContentPage
{
    public TaskCompletionSource<AddTaskDTO> TaskCompletionSource { get; private set; }

    public AddTaskPage()
    {
        InitializeComponent();
        TaskCompletionSource = new TaskCompletionSource<AddTaskDTO>();
    }

    private async void OnSaveButtonClicked(object sender, EventArgs e)
    {
        var taskDto = new AddTaskDTO(TitleEntry.Text, DescriptionEditor.Text, StatusPicker.SelectedItem.ToString() ?? "Incomplete");
        TaskCompletionSource.SetResult(taskDto);
        
        await Navigation.PopModalAsync();
    }
}