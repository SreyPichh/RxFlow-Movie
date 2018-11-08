//
//  AppFlow.swift
//  Movie
//
//  Created by Sreypich Phan on 11/7/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import RxFlow

class AppFlow: Flow {
    var root: Presentable {
        return self.rootViewController
    }
    private let viewModel: AppViewModel
    private lazy var rootViewController: UINavigationController = {
        let vc = UINavigationController()
        vc.setNavigationBarHidden(false, animated: true)
        return vc
    }()
    // MARK: - Init
    init(stepper viewModel: AppViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - Navigation switch
    func navigate(to step: Step) -> NextFlowItems {
        guard let step = step as? AppStep else {
            return NextFlowItems.none
        }
        switch step {
        case .intro:
            return navigateToIntro()
        default:
            <#code#>
        }
    }

}


// MARK: - Navigate to Intro
extension AppFlow {
    private func navigateToIntro() -> NextFlowItems {
        let viewController = ViewController()
        viewController.setViewModel(viewModel)
        let nexFlowItem = NextFlowItem(nextPresentable: viewController, nextStepper: viewModel)
        
    }
}

// MARK: - Navigate to Details
extension AppFlow {
    private func navigateToDetails() -> NextFlowItems {
        let viewController = <#value#>
        
        let nextFlowItem = NextFlowItem(nextPresentable: viewController, nextStepper: viewModel)
    }
}
