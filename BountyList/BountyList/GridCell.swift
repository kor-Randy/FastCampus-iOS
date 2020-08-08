//
//  GridCell.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/08.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import Foundation
import UIKit

class GridCell: UICollectionViewCell{//View
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func updateCell(bountyInfo: BountyInfo){
        imgView.image = bountyInfo.image
        nameLabel.text = bountyInfo.name
        bountyLabel.text = "\(bountyInfo.bounty)"
    }
    
}
