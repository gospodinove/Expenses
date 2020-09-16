//
//  ParentTableViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

class ParentTableViewController: ParentViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - UITableViewDelegate
extension ParentViewController: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension ParentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fatalError("Override tableView(_:numberOfRowsInSection:) in subclasses")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("Override tableView(_:cellForRowAt:) in subclasses")
    }
}
