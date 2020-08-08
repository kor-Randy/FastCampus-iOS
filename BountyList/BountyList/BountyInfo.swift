//
//  BountyInfo.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/08.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import Foundation
import UIKit

struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {// Computed Property
        return UIImage(named: "\(name).jpg")
    }
    
    init(name:String, bounty:Int) {
        self.name = name
        self.bounty = bounty
    }
}
