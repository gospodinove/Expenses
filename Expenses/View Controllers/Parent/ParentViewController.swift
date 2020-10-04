//
//  ParentViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController, Identifiable {
    struct Constants {
        static let animationDuration: TimeInterval = 0.3
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        guard let statusBarBackgroundColorUnwrapped = statusBarBackgroundColor else {
            return .default
        }
        
        return statusBarBackgroundColorUnwrapped.isDark ? .lightContent : .darkContent
    }
    
    private lazy var statusBarView: UIView = {
        let statusBarHeight: CGFloat = UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        
        let statusBarView = UIView()
        view.addSubview(statusBarView)
      
        statusBarView.translatesAutoresizingMaskIntoConstraints = false
        statusBarView.heightAnchor.constraint(equalToConstant: statusBarHeight).isActive = true
        statusBarView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        statusBarView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        statusBarView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        return statusBarView
    }()
    
    var statusBarBackgroundColor: UIColor? {
        didSet {
            guard statusBarBackgroundColor != oldValue else {
                return
            }
            
            animate(animated: false) { [weak self] in
                self?.statusBarView.backgroundColor = self?.statusBarBackgroundColor
                self?.setNeedsStatusBarAppearanceUpdate()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private
    
    // MARK: - Public
    func animate(animated: Bool, animations: @escaping () -> ()) {
        if animated {
            UIView.animate(withDuration: Constants.animationDuration, animations: animations)
        } else {
            animations()
        }
    }
    
    func updateAppearance() {
        
    }
}
