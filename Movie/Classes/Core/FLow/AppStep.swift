//
//  AppStep.swift
//  Movie
//
//  Created by Sreypich Phan on 11/7/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import RxFlow

enum AppStep: Step {
    case intro
    case details
    case setupFlow
    case finish
}
