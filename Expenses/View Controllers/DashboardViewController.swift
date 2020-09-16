//
//  DashboardViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit
import SwiftIcons

final class DashboardViewController: ParentViewController {
    
    @IBOutlet private weak var headerContainerView: UIView!
    
    private lazy var topMenuViewController = AccountSummaryViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(topMenuViewController, fullScreenInView: headerContainerView)
        topMenuViewController.configure(
            balance: 2000,
            items: [
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.moneyBill), color: UIColor.summaryItemColors["expenses"], title: "Expenses", value: 250),
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.frown), color: UIColor.summaryItemColors["debt"], title: "Debt", value: 160),
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.piggyBank), color: UIColor.summaryItemColors["saved"], title: "Saved", value: 200)
        ])
    }
}
