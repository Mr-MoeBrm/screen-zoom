import Capacitor
import UIKit

@objc(ScreenZoomPlugin)
public class ScreenZoomPlugin: CAPPlugin {
    
    @objc func setScreenZoom(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            if let rootView = UIApplication.shared.keyWindow?.rootViewController?.view {
                rootView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0) // Set zoom scale to 100%
            }
            call.resolve()
        }
    }
}
