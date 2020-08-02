//
//  ViewController.swift
//  fastcampus-iOS
//
//  Created by 지현우 on 2020/08/02.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue = 0
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPrice()
        // Do any additional setup after loading the view.
    }

    @IBAction func hello(_ sender: Any) {
        
        let message = "가격은 ₩\(currentValue)입니다."
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default,
                                   handler: { action in
                                    self.setPrice()
        })
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
       
    }
    
    func setPrice(){
        let randomPrice = arc4random_uniform(10000) + 1 // 랜덤
        currentValue = Int(randomPrice)
        priceLabel.text = "`\(currentValue)"
    }
    
}

