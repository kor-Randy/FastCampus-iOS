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
    @IBOutlet weak var nameLabelCenterX: NSLayoutConstraint!
    @IBOutlet weak var bountyLabelCenterX: NSLayoutConstraint!
    
    //var bountyInfo: BountyInfo?
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        
        prepareAnimation()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showAnimation()
        
    }
    
    func prepareAnimation(){
//        nameLabelCenterX.constant = view.bounds.width
//        bountyLabelCenterX.constant = view.bounds.width
        
        nameLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        bountyLabel.transform = CGAffineTransform(translationX: view.bounds.width, y: 0).scaledBy(x: 3, y: 3).rotated(by: 180)
        
        nameLabel.alpha = 0
        bountyLabel.alpha = 0
        
    }
    
    func showAnimation(){
//        nameLabelCenterX.constant = 0
//        bountyLabelCenterX.constant = 0
//
////        UIView.animate(withDuration: 0.3, animations: {
////            self.view.layoutIfNeeded()
////        })
//
////        UIView.animate(withDuration: 0.3,
////                       delay: 0.1,
////                       options: .curveEaseIn,
////                       animations: {
////                            self.view.layoutIfNeeded()
////                        },
////                       completion: nil)
//
//        UIView.animate(withDuration: 0.5,
//                       delay: 0.2,
//                       usingSpringWithDamping: 0.6,
//                       initialSpringVelocity: 2,
//                       options: .allowUserInteraction,
//                       animations: {
//                            self.view.layoutIfNeeded()
//                            //레이아웃이 다시 해야할 필요가 있다면 해라
//                        },
//                       completion: nil)
//
//        //글자 스프링처럼 날라오기
//
//        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromTop, animations: nil, completion: nil)
//        //이미지 뷰
        
        UIView.animate(withDuration: 1, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: .allowUserInteraction, animations: {
            self.nameLabel.transform = CGAffineTransform.identity//원래 상태
            self.nameLabel.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 0.9, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 1.5, options: .allowUserInteraction, animations: {
            self.bountyLabel.transform = CGAffineTransform.identity
            self.bountyLabel.alpha = 1
        }, completion: nil)
        
        UIView.transition(with: imgView, duration: 0.3, options: .transitionFlipFromTop, animations: nil, completion: nil)
        
        
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
