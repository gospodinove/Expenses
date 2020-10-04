//
//  ParentTableViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

class ParentTableViewController: ParentViewController {
    enum TableHeaderView {
        case overlapping(view: UIView)
        case `default`(view: UIView)
    }
    
    private(set) var headerView: TableHeaderView?
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        let footerView = UIView()
        footerView.backgroundColor = .systemBackground
        tableView.tableFooterView = footerView
        
        tableView.delegate = self
        tableView.dataSource = self
        
        switch headerView {
        case let .overlapping(view):
            let backgroundView = UIView()
            tableView.backgroundView = backgroundView
            tableView.backgroundView?.addSubview(view)
            
            view.translatesAutoresizingMaskIntoConstraints = false
            view.topAnchor.constraint(equalTo: backgroundView.topAnchor).isActive = true
            view.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
            view.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
            
            tableView.contentInset = UIEdgeInsets(top: view.frame.height, left: 0, bottom: 0, right: 0)
        case let .default(view):
            tableView.tableHeaderView = view
        case .none:
            break
        }
    }
    
}

// MARK: - UITableViewDelegate
extension ParentTableViewController: UITableViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // override in subclasses
    }
}

// MARK: - UITableViewDataSource
extension ParentTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        assertionFailure("Override tableView(_:numberOfRowsInSection:) in subclasses")
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        assertionFailure("Override tableView(_:cellForRowAt:) in subclasses")
        return UITableViewCell()
    }
}
