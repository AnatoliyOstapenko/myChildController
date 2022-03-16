//
//  TwitterViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 16.03.2022.
//

import UIKit

class TwitterViewController: UIViewController {
    
    class HeaderView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .systemBlue.withAlphaComponent(0.3)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        header()
        headerImage()
    }
    
    func header() {
        let header = HeaderView()
        view.addSubview(header)
        header.translatesAutoresizingMaskIntoConstraints = false
        
        header.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        header.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        header.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    func headerImage() {
        let image = UIImageView(image: UIImage(named: "AvengaLogo"))
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit

        image.topAnchor.constraint(equalTo: view.topAnchor, constant: 45).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }


}
