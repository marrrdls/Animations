//
//  Animation.swift
//  Animations
//
//  Created by Margarita on 16.3.25..
//

import UIKit
import SpringAnimation

struct Animation {
    
    var name: String
    var duration: Double
    var damping: Double
    var velocity: Double
    var rotate: Double
    var scale: Double
    
    static func initializeAnimationModels() -> [Animation] {
        return [
            Animation(name: "pop", duration: 2.0, damping: 0.8, velocity: 1.5, rotate: 1.2, scale: 0.8),
            Animation(name: "shake", duration: 1.8, damping: 0.5, velocity: 0.9, rotate: -2.7, scale: 2.9),
            Animation(name: "morph", duration: 1.5, damping: 0.9, velocity: 1.3, rotate: 1.2, scale: 1.1),
            Animation(name: "flash", duration: 0.8, damping: 0.7, velocity: 1.8, rotate: 2.0, scale: 0.7),
            Animation(name: "squeeze", duration: 2.1, damping: 0.9, velocity: 1.5, rotate: 0.8, scale: 0.6),
            Animation(name: "swing", duration: 2.0, damping: 0.7, velocity: 1.4, rotate: 1.0, scale: 1.0),
            Animation(name: "fall", duration: 1.5, damping: 0.4, velocity: 0.6, rotate: -2.7, scale: 3.0)
           
        ]
    }
}
