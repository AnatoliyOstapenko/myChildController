//
//  Animation.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 15.03.2022.
//

import UIKit

class Animation {

        
    @objc func animateIn(container: UIView, view: UIView) {
            container.transform = CGAffineTransform(translationX: 0, y: -view.frame.height)
            view.alpha = 0
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn) {
                container.transform = .identity
                view.alpha = 1
            }
        }
    
}
