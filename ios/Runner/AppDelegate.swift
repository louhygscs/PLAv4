import UIKit
import Braintree

import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyAMyaKhbqavqPnGBlh2jorMgV1N_2KqMOs")
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("com.mycompany.plav4.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
