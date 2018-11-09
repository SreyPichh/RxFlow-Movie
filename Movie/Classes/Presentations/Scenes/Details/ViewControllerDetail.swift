//
//  ViewControllerDetail.swift
//  Movie
//
//  Created by Sreypich Phan on 11/8/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerDetail: UIViewController {
    var subview: ViewControllerDetailSubview = ViewControllerDetailSubview()
    public var viewModel: AppViewModel?
}
extension ViewControllerDetail {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.subview.title)
        self.view.addSubview(self.subview.text)
        self.view.addSubview(self.subview.childFlowBtn)
        self.view.addSubview(self.subview.back)
    }
    override func viewDidLayoutSubviews() {
        self.subview.updateConstraint()
    }
    public func setViewModel(viewModel: AppViewModel) {
        self.viewModel = viewModel
    }
}

