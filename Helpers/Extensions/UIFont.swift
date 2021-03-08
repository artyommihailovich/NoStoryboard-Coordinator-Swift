//
//  UIFont.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/3/21.
//

import UIKit

public enum FontSize: CGFloat {
    case text = 15
    case description = 13
    case title = 18
}

public extension UIFont {
    static func `with`(_ size: FontSize, weight: UIFont.Weight) -> UIFont {
        UIFont.systemFont(ofSize: size.rawValue, weight: weight)
    }
}
