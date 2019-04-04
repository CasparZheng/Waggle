//
//  UIView+Animator.swift
//  WaggleSample
//
//  Created by 黄明 on 2017/1/14.
//  Copyright © 2017年 Danis. All rights reserved.
//

import Foundation

public class Animator {
    public typealias Animations = (() -> Void)
    public typealias Completion = ((Bool) -> Void)
    
    private var animations: Animations?
    private var completion: Completion?
    
    private var duration: TimeInterval = 0
    private var delay: TimeInterval = 0
    private var damping: CGFloat = 0
    private var velocity: CGFloat = 0
    private var options: UIView.AnimationOptions = .curveEaseInOut
    
    init(duration: TimeInterval) {
        self.duration = duration
    }
    
    public func delay(_ delay: TimeInterval) -> Self {
        self.delay = delay
        
        return self
    }
    public func options(_ options: UIView.AnimationOptions) -> Self {
        self.options = options
        
        return self
    }
    public func spring(damping: CGFloat, velocity: CGFloat) -> Self {
        self.damping = damping
        self.velocity = velocity
        
        return self
    }
    
    public func animations(_ animations: @escaping Animations) -> Self {
        self.animations = animations
        
        return self
    }
    public func completion(_ completion: @escaping Completion) -> Self {
        self.completion = completion
        
        return self
    }
    public func begin() {
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

extension UIView {
    public static func animator(duration: TimeInterval) -> Animator {
        return Animator(duration: duration)
    }
}

