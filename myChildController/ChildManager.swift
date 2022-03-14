//
//  ChildManager.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ChildManager {
    
    // add contraints for ChildVC
    func childVCConstraints(_ childVC: UIViewController,_ viewControler: UIViewController) {
        childVC.view.translatesAutoresizingMaskIntoConstraints = false
        childVC.view.bottomAnchor.constraint(equalTo: viewControler.view.safeAreaLayoutGuide.bottomAnchor, constant: -220).isActive = true
        childVC.view.leadingAnchor.constraint(equalTo: viewControler.view.leadingAnchor, constant: 20).isActive = true
        childVC.view.trailingAnchor.constraint(equalTo: viewControler.view.trailingAnchor, constant: -20).isActive = true
        childVC.view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
}
