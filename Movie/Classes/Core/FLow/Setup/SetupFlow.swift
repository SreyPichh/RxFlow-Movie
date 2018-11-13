//
//  SetupFlow.swift
//  Movie
//
//  Created by Sreypich Phan on 11/12/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import RxFlow

class SetupFlow: Flow {
    var root: Presentable {
        return self.rootViewController
    }
    private let flowCompletionStep: Step
    private let viewModel = SetupViewModel()
    private let rootViewController = UINavigationController()
    
    // MARK: - init
    public init(completeWith step: Step){
        self.flowCompletionStep = step
    }
    
    // MARK: - Navigation step switch
    func navigate(to step: Step) -> NextFlowItems {
        guard let step = step as? SetupStep else { return NextFlowItems.none }
        
        switch step {
        case .step1:
            return self.navigateToStep1()
        case .step2:
            return self.navigateToStep1()
            
//        case .exit:
//            return self.exitFlow()
            
        }
    }
    
}

extension SetupFlow {
    private func navigateToStep1() -> NextFlowItems {
        let viewController: ViewControllerSetupStep1 = ViewControllerSetupStep1()
        viewController.setViewModel(viewModel: self.viewModel)
        self.rootViewController.pushViewController(viewController, animated: true)
        let nextFlowItem = NextFlowItem(nextPresentable: viewController, nextStepper: viewModel)
        return NextFlowItems.one(flowItem: nextFlowItem)
    }
}

extension SetupFlow {
    private func navigateToStep2() -> NextFlowItems {
        let viewController: ViewControllerSetupStep2 = ViewControllerSetupStep2()
        viewController.setViewModel(viewModel: self.viewModel)
        self.rootViewController.pushViewController(viewController, animated: true)
        let nextFlowItem = NextFlowItem(nextPresentable: viewController, nextStepper: viewModel)
        return NextFlowItems.one(flowItem: nextFlowItem)
    }
}

