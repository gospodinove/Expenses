//
//  UIFont+CustomFonts.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 13.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

extension UIFont {
    static let small: UIFont = systemFont(ofSize: 17)
    static let medium: UIFont = systemFont(ofSize: 20)
    static let large: UIFont = systemFont(ofSize: 23)
    
    static let smallSemiBold: UIFont = systemFont(ofSize: 17, weight: .medium)
    static let mediumSemiBold: UIFont = systemFont(ofSize: 20, weight: .medium)
    static let largeSemiBold: UIFont = systemFont(ofSize: 23, weight: .medium)
    
    static let smallBold: UIFont = systemFont(ofSize: 17, weight: .black)
    static let mediumBold: UIFont = systemFont(ofSize: 20, weight: .black)
    static let largeBold: UIFont = systemFont(ofSize: 23, weight: .black)
}
