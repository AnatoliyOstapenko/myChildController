//
//  FirstViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class FirstChildViewController: UIViewController {
    
    let textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "russian warship, go fuck yourself"
        textLabel.textColor = .systemYellow
        textLabel.textAlignment = .center
        textLabel.font = .systemFont(ofSize: 20, weight: .bold)
        return textLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textLabel)
        labelConstraints()
        view.backgroundColor = .systemBlue
    }
    
    func labelConstraints() {
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
