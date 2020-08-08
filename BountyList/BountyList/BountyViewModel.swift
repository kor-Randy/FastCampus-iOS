//
//  BountyViewModel.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/08.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import Foundation

class BountyViewModel {
    var bountyInfoList: [BountyInfo] = [
        BountyInfo(name: "brook", bounty: 33000000),
        BountyInfo(name: "chopper", bounty: 50),
        BountyInfo(name: "franky", bounty: 44000000),
        BountyInfo(name: "luffy", bounty: 300000000),
        BountyInfo(name: "nami", bounty: 16000000),
        BountyInfo(name: "robin", bounty: 80000000),
        BountyInfo(name: "sanji", bounty: 77000000),
        BountyInfo(name: "zoro", bounty: 120000000)
    ]
    
//    var sortedList: [BountyInfo] {
//        let sortedList = bountyInfoList.sorted{ prev, next in
//            return prev.bounty > next.bounty
//        }
//        return sortedList
//    }
    
    init() {
        sortList()
    }
    
    func sortList() {
        bountyInfoList.sort { (prev, next) -> Bool in
            return prev.bounty > next.bounty
        }
    }
    
    var numOfBountyInfoList : Int {
        return bountyInfoList.count
    }
    
    func bountyInfo(at index: Int) -> BountyInfo{
        return bountyInfoList[index]
    }
    
}
