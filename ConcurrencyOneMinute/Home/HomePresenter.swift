//
//  HomePresenter.swift
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

protocol HomePresentationLogic
{
    func presentGetPriceCoin(response: Home.PriceAsset.Response)
    func presentSubscribePriceUpdate()
    
}

class HomePresenter: HomePresentationLogic
{
    weak var viewController: HomeDisplayLogic?
    
    // MARK: Do something
    
    func presentGetPriceCoin(response: Home.PriceAsset.Response) {
        let pricesDisplayModel: [Home.PriceDisplayModel] = response.prices
            .compactMap {
                Home.PriceDisplayModel(nameCoin: $0.key, priceCoin: $0.value.rate)
            }
        let viewModel = Home.PriceAsset.ViewModel(pricesDisplayModel: pricesDisplayModel)
        viewController?.displayGetPriceCoin(viewModel: viewModel)
    }
    
    func presentSubscribePriceUpdate() {
        viewController?.displaySubscribePriceUpdate()
    }
}
