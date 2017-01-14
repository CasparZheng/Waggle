//
//  UIView+Waggle.swift
//  WaggleSample
//
//  Created by 黄明 on 2017/1/14.
//  Copyright © 2017年 Danis. All rights reserved.
//

import UIKit

private let duration: TimeInterval = 0.5

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
    public func rotate(by angle: CGFloat, completion: ((Bool) -> Void)? = nil) {
        let originTransform = view.transform
        let newTransform = view.transform.rotated(by: angle)
        
        animate(toNew: { 
            self.view.transform = newTransform
        }) { 
            self.view.transform = originTransform
        }
    }
    public func scale(by x: CGFloat, y: CGFloat, completion: ((Bool) -> Void)? = nil) {
        let originTransform = view.transform
        let newTransform = view.transform.scaledBy(x: x, y: y)
    
        animate(toNew: { 
            self.view.transform = newTransform
        }) { 
            self.view.transform = originTransform
        }
    }
    public func move(by offset: UIOffset, completion: ((Bool) -> Void)? = nil) {
        let originCenter = view.center
        let newCenter = CGPoint(x: view.center.x + offset.horizontal, y: view.center.y + offset.vertical)
        
        animate(toNew: { 
            self.view.center = newCenter
        }) { 
            self.view.center = originCenter
        }
    }
    private func animate(toNew animation1: (() -> Void)?, toOrigin animation2: (() -> Void)?) {
        UIView.animator(duration: duration * 0.3).options(.curveEaseOut).animations {
            
            animation1?()
            
        }.completion { (_) in
            
            UIView.animator(duration: duration * 0.7).spring(damping: 0.4, velocity: 0.8).animations {
                animation2?()
            }.begin()
            
        }.begin()
    }
}

extension Waggle {
    public func rotate() {
        rotate(by: CGFloat(M_PI_4))
    }
    public func zoomIn() {
        scale(by: 1.2, y: 1.2)
    }
    public func zoomOut() {
        scale(by: 0.8, y: 0.8)
    }
    public func moveHorizontal() {
        move(by: UIOffset(horizontal: 32, vertical: 0))
    }
    public func moveVertical() {
        move(by: UIOffset(horizontal: 0, vertical: 32))
    }
    
}
