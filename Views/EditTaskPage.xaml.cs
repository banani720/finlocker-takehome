using FinLockerTaskList.DTOs;
using FinLockerTaskList.Models;

namespace FinLockerTaskList.Views;

public partial class EditTaskPage : ContentPage
{
        public TaskCompletionSource<EditTaskDTO> TaskCompletionSource { get; private set; }
        private readonly TaskItem TaskToEdit;
        public EditTaskPage(TaskItem taskToEdit)
        {
            TaskToEdit = taskToEdit;
            InitializeComponent();
            TaskCompletionSource = new TaskCompletionSource<EditTaskDTO>();
            BindingContext = taskToEdit;
        }

        private async void OnSaveButtonClicked(object sender, EventArgs e)
        {
            var editTaskDto = new EditTaskDTO(TitleEntry.Text, DescriptionEditor.Text, StatusPicker.SelectedItem.ToString() ?? "Incomplete");
            TaskCompletionSource.SetResult(editTaskDto);

            await Navigation.PopModalAsync();
        }

}