//
//  UICollectionView+Helper.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 13.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(withReuseIdentifier identifier: String = T.id, forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? T else {
            fatalError("No such cell registered for identifier: \(identifier)")
        }
        
        return cell
    }
    
    func register<T: UICollectionViewCell>(_ cell: T.Type) {
        register(UINib(nibName: T.id, bundle: nil), forCellWithReuseIdentifier: T.id)
    }
}
