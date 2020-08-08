//
//  BountyViewController.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/04.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MVVM
    
    //Model
    // - BountyInfo
    // > BountyInfo 만들기
    
    //View
    // - ListCell
    // > ListCell 필요한 정보를 ViewModel 한테서 받는다
    // > ListCell은 ViewModel로부터 받은 정보로 View를 Update한다
    
    //ViewModel
    // - BountyViewModel
    // > BountyViewModel 생성
    // > View에서 필요한 메서드 생성
    // > Model을 갖고 있는다
    
    let viewModel = BountyViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //ViewController에 있음
        //세그웨이 이동하기 전 행동 = performSegue 직전의 메소드
        
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int{
                vc?.viewModel.bountyInfo = viewModel.bountyInfo(at: index)
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCell", for: indexPath) as? GridCell else {
            return UICollectionViewCell()
        }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.item)
        cell.updateCell(bountyInfo: bountyInfo)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("row --> \(indexPath.row)")
        print("item --> \(indexPath.item)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.item)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let itemSpacing: CGFloat = 10 // Item 간 거리 10
        let textAreaHeight: CGFloat = 65 // 이미지 밑 공간 높이 65
        
        let width: CGFloat = (collectionView.bounds.width - itemSpacing)/2
        let height: CGFloat = width * 10/7 + textAreaHeight // img 크기가 7:10 이고 아래 textArea가 65
        
        return CGSize(width: width, height: height)
    }
   
}




