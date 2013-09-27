class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds

    @window.rootViewController = UIViewController.alloc.initWithNibName(nil, bundle:nil)
  end
end
