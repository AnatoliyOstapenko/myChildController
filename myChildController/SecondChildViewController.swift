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
        textLabel.frame = CGRect(x: 30, y: 50, width: 260, height: 80)
    }
    

}
