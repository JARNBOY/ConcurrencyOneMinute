//
//  HomeService.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import Foundation

class HomeService {
    
    func getCurrentPriceCoin(success: @escaping (CoinAssetPriceModel) -> (), fail: @escaping (String?) -> ()) {
        let urlRequest = "https://api.coindesk.com/v1/bpi/currentprice.json"
        APIManager.shared.request(urlRequest) { (result: APIResult<CoinAssetPriceModel>) in
            switch result {
            case .success(let response):
                // Do something with the response
                print(response)
                success(response)
            case .failure(let error):
                // Handle the error
                print(error)
                fail(error.message)
            }
        }
    }
    
}
