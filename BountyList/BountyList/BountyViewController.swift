//
//  BountyViewController.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/04.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numOfBountyInfoList
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else{
            return UITableViewCell()
        }
        
        let bountyInfo = viewModel.bountyInfo(at: indexPath.row)
        
        cell.updateCell(bountyInfo: bountyInfo)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {// 셀 클릭시 호출
        print("--> \(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row) //sender 는 prepare로 전달, Identifier는 스토리보드에서 설정했음
        
    }
   
}




