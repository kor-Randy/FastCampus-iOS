//
//  ViewController.swift
//  fastcampus-iOS
//
//  Created by 지현우 on 2020/08/02.
//  Copyright © 2020 wlgusdn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hello(_ sender: Any) {
        
        let alert = UIAlertController(title: "Hello", message: "My First App!!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        
    }
    
}

