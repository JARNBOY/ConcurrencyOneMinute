//
//  HomeViewController.swift
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

protocol HomeDisplayLogic: AnyObject
{
    func displaySomething(viewModel: Home.Something.ViewModel)
}

class HomeViewController: UIViewController, HomeDisplayLogic
{
    var interactor: HomeBusinessLogic?
    var router: (NSObjectProtocol & HomeRoutingLogic & HomeDataPassing)?
    
    // MARK: Object lifecycle
    
    //MARK: Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        let config = HomeConfigurator()
        config.configure(viewController: self)
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupView()
        doSomething()
        
    }
    
    //MARK: View
    private func setupView() {
        //set Navigation Bar
        self.navigationItem.title = "Concerrency Price"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething()
    {
        let request = Home.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: Home.Something.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
