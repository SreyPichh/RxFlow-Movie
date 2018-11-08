//
//  ViewController.swift
//  Movie
//
//  Created by Sreypich Phan on 11/5/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var subview: ViewControllerSubview = ViewControllerSubview()

}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.subview.label)
        self.view.addSubview(self.subview.btn)
    }
    override func viewDidLayoutSubviews() {
        self.subview.updateConstraint()
    }

}
