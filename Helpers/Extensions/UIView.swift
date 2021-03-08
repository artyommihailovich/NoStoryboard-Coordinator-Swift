//
//  UIView.swift
//  StartAppSnp
//
//  Created by Artyom Mihailovich on 3/2/21.
//

import UIKit

public extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
