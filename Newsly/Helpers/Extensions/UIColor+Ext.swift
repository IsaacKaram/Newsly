//
//  UIColor+Ext.swift
//  Newsly
//
//  Created by Isaac Karam on 29/03/22.
//

import UIKit

enum Color: String {
    case bottomButton = "BottomButton"
    case shadowColor = "ShadowColor"
}

extension UIColor {
    static func color(for color: Color) -> UIColor {
        UIColor(named: color.rawValue) ?? UIColor()
    }
}
