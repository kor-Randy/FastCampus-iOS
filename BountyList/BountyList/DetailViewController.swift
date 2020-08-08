//
//  DetailViewController.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/08.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //MVVM
    
    //Model
    // - BountyInfo
    // > BountyInfo 만들기
    
    //View
    // - ImageView, NameLabel, BountyLabel
    // > View들은 ViewModel을 통해 구성된다
    
    //ViewModel
    // - DetailViewModel
    // > DetailViewModel 생성
    // > View에서 필요한 메서드 생성
    // > Model을 갖고 있는다
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    //var bountyInfo: BountyInfo?
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    
    func updateUI(){
        
        if let bountyInfo = viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
    }
    

    @IBAction func close(_ sender: Any){
        dismiss(animated: true, completion: nil)
        //completion -> 사라진 후에 동작
    }
    

}
