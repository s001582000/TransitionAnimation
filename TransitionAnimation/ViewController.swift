//
//  ViewController.swift
//  TransitionAnimation
//
//  Created by 梁雅軒 on 2017/2/23.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func btnOnClick(_ sender: UIButton) {
        let meunView = MeunView("MeunView")
        meunView.show()
    }
}
