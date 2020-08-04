//
//  BountyViewController.swift
//  BountyList
//
//  Created by 지현우 on 2020/08/04.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class BountyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nameList = ["brook","chopper","franky","luffy","nami","robin","sanji","zoro"]
    let bountyList = [33000000,50,44000000,300000000,16000000,8000000,77000000,120000000]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else{
            return UITableViewCell()
        }
        cell.imgView.image = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.bountyLabel.text = String(bountyList[indexPath.row])
        cell.nameLabel.text = String(nameList[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("--> \(indexPath.row)")
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
class ListCell: UITableViewCell{
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
}
