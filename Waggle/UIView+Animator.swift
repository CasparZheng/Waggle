//
//  UIView+Animator.swift
//  WaggleSample
//
//  Created by 黄明 on 2017/1/14.
//  Copyright © 2017年 Danis. All rights reserved.
//

import Foundation

extension UIView {
    public class Animator {
        typealias Animations = (() -> Void)
        typealias Completion = ((Bool) -> Void)
        
        private var animations: Animations?
        private var completion: Completion?
        
        private let duration: TimeInterval
        private var delay: TimeInterval = 0
        private var damping: CGFloat = 0
        private var velocity: CGFloat = 0
        private var options: UIViewAnimationOptions = .curveEaseInOut
        
        
        init(duration: TimeInterval) {
            self.duration = duration
        }
        
        func delay(_ delay: TimeInterval) -> Self {
            self.delay = delay
            
            return self
        }
        func options(_ options: UIViewAnimationOptions) -> Self {
            self.options = options
            
            return self
        }
        func spring(damping: CGFloat, velocity: CGFloat) -> Self {
            self.damping = damping
            self.velocity = velocity
            
            return self
        }
        
        func animations(_ animations: @escaping Animations) -> Self {
            self.animations = animations
            
            return self
        }
        func completion(_ completion: @escaping Completion) -> Self {
            self.completion = completion
            
            return self
        }
        func begin() {
            if damping == 0 {
                UIView.animate(withDuration: duration, delay: delay, options: options, animations: { 
                    self.animations?()
                }, completion: completion)
            } else {
                UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: options, animations: { 
                    self.animations?()
                }, completion: completion)
            }
        }
    }
}

