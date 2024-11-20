using FinLockerTaskList.Models;

namespace FinLockerTaskList.DTOs;

public class AddTaskDTO(string title, string description, string status)
{
    public Guid Id = Guid.NewGuid();
    public string Title = title;
    public string Description = description;
    public string Status = status;
}