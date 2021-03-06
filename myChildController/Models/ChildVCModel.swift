//
//  ChildManager.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ChildVCModel {

    // add contraints for ChildVC
    func childVCConstraints(_ childVC: UIViewController,_ viewControler: UIViewController) {
        childVC.view.translatesAutoresizingMaskIntoConstraints = false
        childVC.view.layer.cornerRadius = 24
        childVC.view.centerXAnchor.constraint(equalTo: viewControler.view.centerXAnchor).isActive = true
        childVC.view.centerYAnchor.constraint(equalTo: viewControler.view.centerYAnchor).isActive = true
        childVC.view.leadingAnchor.constraint(equalTo: viewControler.view.leadingAnchor, constant: 20).isActive = true
        childVC.view.trailingAnchor.constraint(equalTo: viewControler.view.trailingAnchor, constant: -20).isActive = true
        childVC.view.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    // add ChildVC
    func addChildVC(_ childVC: UIViewController,_ viewControler: UIViewController) {
        viewControler.addChild(childVC)
        viewControler.view.addSubview(childVC.view)
        childVC.didMove(toParent: viewControler) // move second VC to default VC
        childVCConstraints(childVC, viewControler)
    }

}
