//
//  ViewControllerSubview.swift
//  Movie
//
//  Created by Sreypich Phan on 11/7/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import Then
import SnapKit

class ViewControllerSubview {
    let label = UILabel().then {
        $0.text = "Welcome"
    }
    let btn = UIButton().then {
        $0.setTitle("Setup", for: .normal)
        $0.backgroundColor = UIColor.blue
        $0.layer.cornerRadius = 10.0
        
    }
    
    func updateConstraint() {
        self.label.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)

        }
        self.btn.snp.makeConstraints { (make) in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-50)
        }
    }
    
    
}

