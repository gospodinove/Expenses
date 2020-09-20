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
    
    @IBOutlet private weak var tableView: UITableView!
    
    private lazy var topMenuViewController = AccountSummaryViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        topMenuViewController.configure(
            balance: 2000,
            items: [
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.moneyBill), color: UIColor.summaryItemColors["expenses"], title: "Expenses", value: 250),
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.frown), color: UIColor.summaryItemColors["debt"], title: "Debt", value: 160),
                AccountSummaryViewController.SummaryItem(icon: .fontAwesomeSolid(.piggyBank), color: UIColor.summaryItemColors["saved"], title: "Saved", value: 200)
        ])
        
        updateAppearance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - Private
    private func configureTableView() {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 300))
        addChild(topMenuViewController, fullScreenInView: headerView)
        tableView.tableHeaderView = headerView
    }
    
    private func updateAppearance() {
        view.backgroundColor = .mainColor
        statusBarBackgroundColor = .mainColor
    }
}
