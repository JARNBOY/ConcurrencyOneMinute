//
//  LocalDataManager.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import Foundation

class LocalDataManager {
    static let shared = LocalDataManager()
    
    private init() {}
    
    func savePricesBPI(pricesBPI: [PriceDisplayModel], success: @escaping () -> Void) {
        let newDataForSavePricesBPI = pricesBPI.compactMap { $0.dictionaryRepresentation }
        let defaults = UserDefaults.standard
        if let savedListBpiArray = defaults.array(forKey: PricesBPIKey) as? [[String: Any]] {
            // Use the saved data and update new Data
            let updatePricesHistory = savedListBpiArray + newDataForSavePricesBPI
            defaults.set(updatePricesHistory, forKey: PricesBPIKey)
        } else {
            //save new data
            defaults.set(newDataForSavePricesBPI, forKey: PricesBPIKey)
        }
        success()
    }
    
    func getPricesBPI() -> [PriceDisplayModel] {
        let defaults = UserDefaults.standard
        if let savedListBpiArray = defaults.array(forKey: PricesBPIKey) as? [[String: Any]] {
            let pricesBPI = savedListBpiArray.compactMap {
                PriceDisplayModel(
                    nameCoin: $0["name_coin"] as? String ?? "",
                    priceCoin: $0["price_coin"] as? String ?? "",
                    time: $0["time"] as? String ?? ""
                )
            }
            return pricesBPI
        } else {
            return []
        }
    }

}
