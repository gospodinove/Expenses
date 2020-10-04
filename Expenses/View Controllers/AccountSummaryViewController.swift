//
//  TopMenuViewController.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit
import SwiftIcons

final class AccountSummaryViewController: ParentViewController {
    private struct Constants {
        static let summaryItemWidth: CGFloat = 130
        static let summaryItemInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        static let summaryItemMinimumLineSpacing: CGFloat = 20
    }
    
    struct SummaryItem {
        var icon: UIImage
        var color: UIColor?
        var title: String
        var value: Double
        
        init(icon: SwiftIcons.FontType, color: UIColor?, title: String, value: Double) {
            self.icon = UIImage.init(icon: icon, size: CGSize(width: 500, height: 500))
            self.color = color
            self.title = title
            self.value = value
        }
    }
    
    @IBOutlet private weak var balanceLabel: UILabel!
    @IBOutlet private weak var balanceValueLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private var summaryItems: [SummaryItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLabels()
        configureCollectionView()
        
        updateAppearance()
    }
    
    override func updateAppearance() {
        balanceLabel.textColor = UIColor.white.withAlphaComponent(0.5)
        balanceValueLabel.textColor = .white
        
        view.backgroundColor = .mainColor
        collectionView.backgroundColor = .mainColor
    }
    
    // MARK: - Private
    private func configureLabels() {
        balanceValueLabel.font = .largeBold
        balanceLabel.font = .mediumBold
    }
    
    private func configureCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(AccountSummaryItemCollectionViewCell.self)
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    // MARK: - Public
    func configure(balance: Double, items: [SummaryItem]) {
        balanceValueLabel.text = "\(balance) BGN"
        balanceLabel.text = "Your Balance"
        
        summaryItems = items
        collectionView.reloadData()
    }
}

// MARK: - UICollectionViewDelegate
extension AccountSummaryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected \(indexPath)")
    }
}

// MARK: - UICollectionViewDataSource
extension AccountSummaryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return summaryItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: AccountSummaryItemCollectionViewCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
        
        cell.configure(item: summaryItems[indexPath.row])
        
        return cell
    }
}

extension AccountSummaryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.summaryItemWidth, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return Constants.summaryItemInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return Constants.summaryItemMinimumLineSpacing
    }
}
