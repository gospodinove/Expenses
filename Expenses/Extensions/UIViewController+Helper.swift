//
//  UIViewController+Helper.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

extension UIViewController {
    func addChild(_ viewController: UIViewController, fullScreenInView containerView: UIView) {
        addChild(viewController)
        containerView.addSubview(viewController.view)
        
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        viewController.view.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        viewController.view.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        viewController.view.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        viewController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        
        viewController.didMove(toParent: self)
    }
}
