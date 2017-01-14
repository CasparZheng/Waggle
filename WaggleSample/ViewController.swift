//
//  ViewController.swift
//  WaggleSample
//
//  Created by 黄明 on 2017/1/14.
//  Copyright © 2017年 Danis. All rights reserved.
//

import UIKit
import Waggle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animator(duration: 3).delay(3).animations {
            
        }.completion { (_) in
            
        }.begin()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

