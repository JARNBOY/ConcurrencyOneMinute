//
//  HomeConfigurator.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import UIKit

final class HomeConfigurator {
    func configure(viewController: HomeViewController) {
        
        let presenter = HomePresenter()
        presenter.viewController = viewController

        let interactor = HomeInteractor()
        interactor.presenter = presenter
        
        let router = HomeRouter()
        router.viewController = viewController
        router.dataStore = interactor

        viewController.interactor = interactor
        viewController.router = router
    }
}
