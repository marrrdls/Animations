//
//  AnimationViewController.swift
//  Animations
//
//  Created by Margarita on 16.3.25..
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    
    @IBOutlet private var animationView: SpringView!
    @IBOutlet private var animatonLabelInfo: UILabel!
    
    @IBOutlet private var animationButton: UIButton!
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        animate()
    }
    
    let animations: [String] = [
        "pop",
        "shake",
        "morph",
        "flash",
        "squeeze",
        "swing",
        "fall"
    ]
    
    var currentAnimationIndex = 0
    var animation: [Animation] = Animation.initializeAnimationModels()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateInfo()
    }
    
    func updateInfo() {
        let currentAnimation = animation[currentAnimationIndex]
        
        animatonLabelInfo.text = """
        Animation: \(currentAnimation.name)
        Duration: \(currentAnimation.duration)
        damping: \(currentAnimation.damping)
        Velocity: \(currentAnimation.velocity)
        Rotation: \(currentAnimation.rotate)
        Skale: \(currentAnimation.scale)
        """
        
        animationButton.setTitle("Run \(animations[(currentAnimationIndex) % animations.count])", for: .normal)
    }
}


// MARK: - Animation
extension AnimationViewController {
    @objc func animate()  {
        let currentAnimation = animation[currentAnimationIndex]
       
        animationView.animation = currentAnimation.name
        animationView.duration = currentAnimation.duration
        animationView.damping = currentAnimation.damping
        animationView.velocity = currentAnimation.velocity
        animationView.rotate = currentAnimation.rotate
    
        animationView.animate()
        
        currentAnimationIndex = (currentAnimationIndex + 1) % animation.count
        updateInfo()
    }
}
