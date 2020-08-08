//
//  DetailViewModel.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/08.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import Foundation

class DetailViewModel{
    
    var bountyInfo : BountyInfo?
    
    func update(model: BountyInfo?){
        bountyInfo = model
    }
    
}
