import Foundation
import SwiftUI

// Todo: fix work Color
extension UIColor {
    static let lightOrange = UIColor(red: 255/255, green: 249/255, blue: 249/255, alpha: 1)
    static let darkRed = UIColor(red: 195/255, green: 53/255, blue: 53/255, alpha: 1)
    static let primary = UIColor(red: 229 / 255, green: 248 / 255, blue: 245 / 255, alpha: 1)
}

extension Color {
    static let darkRed = Color(UIColor.darkRed)
    static let primary = Color(UIColor.primary)
}
