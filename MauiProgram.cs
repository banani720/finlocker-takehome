using CommunityToolkit.Maui;
using FinLockerTaskList.ViewModels;
using FinLockerTaskList.Views;
using Microsoft.Extensions.Logging;

namespace FinLockerTaskList;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.UseMauiCommunityToolkit()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});
		builder.Services.AddSingleton<TaskListViewModel>();
		builder.Services.AddSingleton<TaskListView>();
		

#if DEBUG
		builder.Logging.AddDebug();
#endif

		return builder.Build();
	}
}
