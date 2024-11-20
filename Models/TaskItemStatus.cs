namespace FinLockerTaskList.Models;

public class TaskItemStatus(string name)
{
    public string Name { get; } = name;
    public TaskItemStatus Complete = new("Complete");
    public TaskItemStatus Incomplete = new("Incomplete");
    public TaskItemStatus InProgress = new("In Progress");
}