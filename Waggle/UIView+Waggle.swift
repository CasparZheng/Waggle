//
//  UIView+Waggle.swift
//  WaggleSample
//
//  Created by 黄明 on 2017/1/14.
//  Copyright © 2017年 Danis. All rights reserved.
//

import UIKit

public final class Waggle {
    let view: UIView
    init(view: UIView) {
        self.view = view
    }
}

extension UIView {
    public var waggle: Waggle {
        return Waggle(view: self)
    }
}

extension Waggle {
    func rotate(angle: CGFloat, clockwise: Bool, completion: ((Bool) -> Void)? = nil) {
        
    }
    func scale(dx: CGFloat, dy: CGFloat, completion: ((Bool) -> Void)? = nil) {
        
    }
    func move(offset: UIOffset, completion: ((Bool) -> Void)? = nil) {
        
    }
}

extension Waggle {
    func rotate() {
        
    }
    func sacleOut() {
        
    }
    func scaleIn() {
        
    }
    func moveHorizontal() {
        
    }
    func moveVertical() {
        
    }
    
}
