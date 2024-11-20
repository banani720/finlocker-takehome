using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace FinLockerTaskList.Models;

public class TaskItem(string title, string description) : INotifyPropertyChanged
{
    public Guid Id { get; set; } = Guid.NewGuid();

    private string _title = title;
    public string Title
    {
        get => _title;
        set
        {
            if (_title != value)
            {
                _title = value;
                OnPropertyChanged();
            }
        }
    }

    private string _description = description;
    public string Description
    {
        get => _description;
        set
        {
            if (_description != value)
            {
                _description = value;
                OnPropertyChanged();
            }
        }
    }

    private string _status = "Incomplete";
    public string Status
    {
        get => _status;
        set
        {
            if (_status != value)
            {
                _status = value;
                OnPropertyChanged();
            }
        }
    }

    public TaskItem(Guid id, string title, string description, string status) : this(title, description)
    {
        Id = id;
        Status = status;
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}