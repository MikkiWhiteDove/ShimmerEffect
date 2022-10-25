//
//  ViewController.swift
//  ShimmerEffect
//
//  Created by Mishana on 25.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(white: 1, alpha: 0.1)
        
        let textLabel = UILabel()
        textLabel.text = "Shimmer Effect"
        textLabel.textColor = UIColor(white: 1, alpha: 0.2)
        textLabel.font = UIFont.systemFont(ofSize: 50)
        textLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width , height: 400)
        textLabel.textAlignment = .center
        view.addSubview(textLabel)
        
        
        let shimmerTextLabel = UILabel()
        shimmerTextLabel.text = "Shimmer Effect"
        shimmerTextLabel.textColor = .white
        shimmerTextLabel.font = UIFont.systemFont(ofSize: 50)
        shimmerTextLabel.frame = CGRect(x: 0, y: 0, width: view.frame.width , height: 400)
        shimmerTextLabel.textAlignment = .center
        view.addSubview(shimmerTextLabel)
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0, 0.5, 1]
        gradientLayer.frame = shimmerTextLabel.frame
        
        let angle = 45 * CGFloat.pi / 180
        
        gradientLayer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)
        
        shimmerTextLabel.layer.mask = gradientLayer
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        
        animation.duration = 1.5
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        animation.repeatCount = Float.infinity
        
        gradientLayer.add(animation, forKey: "doesn'tmatterJustSomeKey")

    }


}

