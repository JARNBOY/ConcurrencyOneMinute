//
//  CalculatorConfigutrator.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import Foundation

final class CalculatorConfigutrator {
    func configure(viewController: CalculatorViewController) {
        
        let presenter = CalculatorPresenter()
        presenter.viewController = viewController

        let interactor = CalculatorInteractor()
        interactor.presenter = presenter
        
        let router = CalculatorRouter()
        router.viewController = viewController
        router.dataStore = interactor

        viewController.interactor = interactor
        viewController.router = router
    }
}
