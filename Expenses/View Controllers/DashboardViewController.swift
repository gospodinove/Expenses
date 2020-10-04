//
//  DashboardViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit
import SwiftIcons

final class DashboardViewController: ParentTableViewController {
    
    override var headerView: TableHeaderView? { .overlapping(view: headerViewContainer) }
    
    private lazy var topMenuViewController = AccountSummaryViewController()
    private lazy var headerViewContainer: UIView = {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 300))
        addChild(topMenuViewController, fullScreenInView: headerView)
        return headerView
    }()
    
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        super.scrollViewDidScroll(scrollView)
        
//        navigationController?.isNavigationBarHidden = tableView.contentOffset.y == 0
    }
    
    override func updateAppearance() {
        statusBarBackgroundColor = .mainColor
    }
    
    // MARK: - Private
    override func configureTableView() {
        super.configureTableView()
    }
}
