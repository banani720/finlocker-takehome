namespace FinLockerTaskList.DTOs;

public class EditTaskDTO(string title, string description, string status)
{
    public string Title = title;
    public string Description = description;
    public string TaskStatus = status;
}