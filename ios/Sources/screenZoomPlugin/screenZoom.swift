import Foundation
import UIKit

@objc public class ScreenZoom: NSObject {
    
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func setScreenZoom() {
        if let rootView = UIApplication.shared.keyWindow?.rootViewController?.view {
            rootView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0) // Set zoom scale to 100%
        }
    }
}
