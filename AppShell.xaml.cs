using FinLockerTaskList.Views;

namespace FinLockerTaskList;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();

		Routing.RegisterRoute("addtask", typeof(AddTaskPage));
	}
}
