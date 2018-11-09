//
//  ViewControllerDetailSubview.swift
//  Movie
//
//  Created by Sreypich Phan on 11/8/18.
//  Copyright © 2018 Sreypich Phan. All rights reserved.
//

import Foundation
import Then
import SnapKit

class ViewControllerDetailSubview {
    let title = UILabel().then {
        $0.text = "Details"
        
    }
    let text = UILabel().then {
        $0.text = "First, We will setup some stuff for you, so then Application can syn with you"
        
    }
    let childFlowBtn = UIButton().then {
        $0.setTitle("Child Flow", for: .normal)
        $0.layer.cornerRadius = 10.0
    
    }
    let back = UIButton().then {
        $0.setTitle("Back", for: .normal)
        $0.layer.cornerRadius = 10.0
    }
    func updateConstraint()  {
        self.title.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.text.snp.makeConstraints { (make) in
            make.width.equalTo(500)
            make.height.equalTo(250)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(250)
        }
        self.childFlowBtn.snp.makeConstraints { (make) in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-200)
        }
        self.back.snp.makeConstraints { (make) in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-50)
        }
    }
    
    
    
}
