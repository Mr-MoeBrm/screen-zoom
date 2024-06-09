// iOS Implementation
import Capacitor
import UIKit

@objc(ScreenZoomPlugin)
public class ScreenZoomPlugin: CAPPlugin {

    @objc func setScreenZoom(_ call: CAPPluginCall) {
        // Set screen zoom level to 100%
        if let rootView = UIApplication.shared.keyWindow?.rootViewController?.view {
            rootView.transform = CGAffineTransform.identity
        }
        
        call.resolve()
    }
}
