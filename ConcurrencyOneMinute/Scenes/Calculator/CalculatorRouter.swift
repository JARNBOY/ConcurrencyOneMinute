//
//  CalculatorRouter.swift
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

@objc protocol CalculatorRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CalculatorDataPassing
{
    var dataStore: CalculatorDataStore? { get }
}

class CalculatorRouter: NSObject, CalculatorRoutingLogic, CalculatorDataPassing
{
    weak var viewController: CalculatorViewController?
    var dataStore: CalculatorDataStore?
}
