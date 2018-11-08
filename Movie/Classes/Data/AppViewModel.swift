//
//  AppViewModel.swift
//  Movie
//
//  Created by Sreypich Phan on 11/7/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import RxFlow

class AppViewModel: Stepper {
    init() {
        self.step.accept(AppStep.intro)
    }
    public func toDetails() {
        self.step.accept(AppStep.details)
    }
    public func toIntro() {
        self.step.accept(AppStep.intro)
    }
    public func toSetupFLow() {
        self.step.accept(AppStep.setupFlow)
    }
    public func toFinished() {
        self.step.accept(AppStep.intro)
    }
}
