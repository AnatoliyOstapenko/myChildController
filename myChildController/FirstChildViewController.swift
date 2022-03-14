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
        textLabel.text = "russian warship, go fuck yourself"
        textLabel.textColor = .systemYellow
        textLabel.textAlignment = .center
        textLabel.font = .systemFont(ofSize: 14, weight: .bold)
        return textLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textLabel)
        labelConstraints()

        view.backgroundColor = .systemBlue
    }
    func labelConstraints() {
        textLabel.frame = CGRect(x: 30, y: 50, width: 280, height: 80)
    }

}
