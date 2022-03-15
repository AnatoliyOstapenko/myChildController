//
//  PopUpModel.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 15.03.2022.
//

import UIKit


class PopUpModel: UIView {
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 28, weight: .bold)
        label.textAlignment = .center
        label.text = "PopUp title"
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.textAlignment = .center
        label.numberOfLines = 3
        label.text = "first row of text \n second row of text \n third row of text"
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
    fileprivate lazy var popUpStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLable, subTitleLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.backgroundColor = .systemCyan
        stack.axis = .vertical // specify a stack as vertical
        return stack
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray
        self.frame = UIScreen.main.bounds
        addSubview(popUpContainer) // always before constraints!
        
        popUpContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        popUpContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        popUpContainer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        popUpContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        
        popUpContainer.addSubview(popUpStack) // add UIStackView to my container view
        //popUpStack.topAnchor.constraint(equalTo: popUpContainer.topAnchor).isActive = true
        popUpStack.leadingAnchor.constraint(equalTo: popUpContainer.leadingAnchor).isActive = true
        popUpStack.trailingAnchor.constraint(equalTo: popUpContainer.trailingAnchor).isActive = true
        //popUpStack.bottomAnchor.constraint(equalTo: popUpContainer.bottomAnchor).isActive = true
        popUpStack.heightAnchor.constraint(equalTo: popUpContainer.heightAnchor, multiplier: 0.5).isActive = true
        popUpStack.centerYAnchor.constraint(equalTo: popUpContainer.centerYAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
