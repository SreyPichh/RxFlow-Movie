//
//  SetupViewModel.swift
//  Movie
//
//  Created by Sreypich Phan on 11/12/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import RxFlow

class SetupViewModel: Stepper {
    init() {
        self.toStep1()
    }
    public func toStep1() {
        self.step.accept(SetupStep.step1)
        
    }
    
    public func toStep2() {
        self.step.accept(SetupStep.step2)
    }
    
    public func exit() {
        self.step.accept(SetupStep.exit)
    }
}

