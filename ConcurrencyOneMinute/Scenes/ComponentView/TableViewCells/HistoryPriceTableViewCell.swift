//
//  HistoryPriceTableViewCell.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import UIKit

class HistoryPriceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var assetPriceTitleLabel: UILabel!
    @IBOutlet weak var assetTitleLabel: UILabel!
    @IBOutlet weak var assetTimpUpdateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(assetTitle: String, assetPrice: String, timeUpdated: String) {
        self.assetTitleLabel.text = assetTitle
        self.assetPriceTitleLabel.text = assetPrice
        self.assetTimpUpdateLabel.text = timeUpdated
    }
}
