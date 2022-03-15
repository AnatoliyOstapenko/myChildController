//
//  SecondChildViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class SecondChildViewController: UIViewController {
    
    let textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "Glory to Ukraine!"
        textLabel.textColor = .systemBlue
        textLabel.textAlignment = .center
        textLabel.font = .systemFont(ofSize: 30, weight: .bold)
        return textLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(textLabel)
        labelConstraints()
    }
    
    func labelConstraints() {
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    

}
