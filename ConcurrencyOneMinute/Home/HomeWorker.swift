//
//  HomeWorker.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomeWorkerInterface {
    func getCurrentPriceCoin(success: @escaping (Home.PriceAsset.Response) -> (), fail: @escaping (_ error: String?) -> ())
}

class HomeWorker: HomeWorkerInterface
{
    var service: HomeService!
    
    init(service: HomeService) {
        self.service = service
    }
    
    func getCurrentPriceCoin(success: @escaping (Home.PriceAsset.Response) -> (), fail: @escaping (String?) -> ()) {
        service.getCurrentPriceCoin { coinAssetPriceModel in
            
            let response : Home.PriceAsset.Response = Home.PriceAsset.Response(prices: coinAssetPriceModel.bpi)
            success(response)
        } fail: { error in
            fail(error)
        }
    }
    
}
