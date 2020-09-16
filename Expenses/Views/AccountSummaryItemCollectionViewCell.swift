//
//  AccountSummaryItemCollectionViewCell.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 13.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import UIKit

final class AccountSummaryItemCollectionViewCell: UICollectionViewCell {
    private struct Constants {
        static let cornerRadius: CGFloat = 20
        static let imageSize = CGSize(width: 60, height: 60)
    }
    
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var itemValueLabel: UILabel!
    @IBOutlet private weak var itemCaptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureLabels()
        updateAppearance()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = Constants.cornerRadius
        layer.cornerCurve = .continuous
    }
    
    // MARK: - Private
    private func configureLabels() {
        itemValueLabel.font = .mediumBold
        itemCaptionLabel.font = .mediumBold
    }
    
    private func updateAppearance() {
        itemValueLabel.textColor = .label
        itemCaptionLabel.textColor = UIColor.label.withAlphaComponent(0.5)
    }
    
    // MARK: - Public
    func configure(item: AccountSummaryViewController.SummaryItem) {
        iconImageView.image = item.icon.resize(to: Constants.imageSize)
        itemValueLabel.text = "\(item.value)"
        itemCaptionLabel.text = item.title
        
        self.contentView.backgroundColor = item.color
    }
}
