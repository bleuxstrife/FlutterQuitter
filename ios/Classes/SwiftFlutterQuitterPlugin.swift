import Flutter
import UIKit

public class SwiftFlutterQuitterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.bleuxstrife/flutter_quitter", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterQuitterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "quitApplication") {
            UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
    }
  }
}
