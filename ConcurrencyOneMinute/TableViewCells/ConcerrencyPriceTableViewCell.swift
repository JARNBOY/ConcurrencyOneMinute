//
//  ConcerrencyPriceTableViewCell.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import UIKit


class ConcerrencyPriceTableViewCell: UITableViewCell {
    @IBOutlet weak var assetPriceTitleLabel: UILabel!
    @IBOutlet weak var assetTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(assetTitle: String, assetPrice: String) {
        self.assetTitleLabel.text = assetTitle
        self.assetPriceTitleLabel.text = assetPrice
    }
}

