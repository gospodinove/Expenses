//
//  TopMenuViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

final class AccountSummaryViewController: ParentViewController {
    
    @IBOutlet private weak var titleDescriptionLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Public
    func configure(title: String, label: String, backgroundColor: UIColor) {
        titleLabel.text = title
        titleDescriptionLabel.text = label
        
        view.backgroundColor = backgroundColor
    }
}
