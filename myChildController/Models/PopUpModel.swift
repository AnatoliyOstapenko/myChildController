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
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.text = "PopUp title"
        return label
    }()
    
    private let subTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .thin)
        label.text = "SubTitle"
        return label
    }()
    
    private let popUpContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 24
        
        return view
    }()
    
    private lazy var popUpStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLable, subTitle])
        popUpContainer.translatesAutoresizingMaskIntoConstraints = false
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
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
