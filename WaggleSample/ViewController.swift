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
    @IBOutlet weak var testView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animator(duration: 0.3)
            .delay(1)
            .spring(damping: 0.6, velocity: 1.0)
            .animations {
            
        }
            .completion { (_) in
            
        }
            .begin()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onRotate(_ sender: Any) {
        testView.waggle.rotate()
    }
    @IBAction func onZoomIn(_ sender: Any) {
        testView.waggle.zoomIn()
    }
    @IBAction func onZoomOut(_ sender: Any) {
        testView.waggle.zoomOut()
    }
    @IBAction func onMoveHorizontal(_ sender: Any) {
        testView.waggle.moveHorizontal()
    }
    @IBAction func onMoveVertical(_ sender: Any) {
        testView.waggle.moveVertical()
    }

}

