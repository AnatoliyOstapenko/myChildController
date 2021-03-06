//
//  PopUpModel.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 15.03.2022.
//

import UIKit

class PopUpModel: UIView {
    
    var animation = Animation()
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.textAlignment = .center
        label.text = "Welcome to Ukraine"
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: .thin)
        label.textAlignment = .center
        label.numberOfLines = 3
        label.text = "Tap on the screen \n to pop up message will be hidden \n after that you can choose your motto"
        return label
    }()
    
    // Create container UIView
    private let popUpContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 24
        return view
    }()
    
    // Create UIStackView
    private lazy var popUpStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLable, subTitleLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical // specify a stack as vertical
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Activate tap gesture
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateOut)))
        
        self.backgroundColor = .systemBlue.withAlphaComponent(0.3) // set alpfa
        self.frame = UIScreen.main.bounds
        
        addSubview(popUpContainer) // always before constraints!
        
        popUpContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        popUpContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        popUpContainer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        popUpContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
        
        popUpContainer.addSubview(popUpStack) // add UIStackView to my container view
        
        popUpStack.leadingAnchor.constraint(equalTo: popUpContainer.leadingAnchor).isActive = true
        popUpStack.trailingAnchor.constraint(equalTo: popUpContainer.trailingAnchor).isActive = true
        popUpStack.heightAnchor.constraint(equalTo: popUpContainer.heightAnchor, multiplier: 0.5).isActive = true
        popUpStack.centerYAnchor.constraint(equalTo: popUpContainer.centerYAnchor).isActive = true
        
        // activate popUp in method
        animation.animateIn(container: popUpContainer, view: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
// MARK: - Animation Method
extension PopUpModel {

    @objc private func animateOut() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn) {
            self.popUpContainer.transform = CGAffineTransform(translationX: 0, y: -self.frame.height)
        } completion: { complete in
            self.removeFromSuperview()
        }
    }

}
