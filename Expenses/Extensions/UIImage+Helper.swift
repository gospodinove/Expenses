//
//  UIImage+Helper.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 16.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

extension UIImage {
    func resize(to size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        return renderer.image { (context) in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
