//
//  HistoryConfigurator.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import UIKit

final class HistoryConfigurator {
    func configure(viewController: HistoryViewController) {
        
        let presenter = HistoryPresenter()
        presenter.viewController = viewController

        let interactor = HistoryInteractor()
        interactor.presenter = presenter
        
        let router = HistoryRouter()
        router.viewController = viewController
        router.dataStore = interactor

        viewController.interactor = interactor
        viewController.router = router
    }
}
