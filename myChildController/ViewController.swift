//
//  ViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    let secondChildVC = SecondChildViewController()
    
    let firstChildVC: FirstChildViewController = {
        let firstChildVC = FirstChildViewController()
        return firstChildVC
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // add ChildVC programmatically
    func addChildVC(_ vc: UIViewController) {
        addChild(vc)
        view.addSubview(vc.view)
        vc.didMove(toParent: self) // move second VC to default VC
        childVCConstraints(vc)
    }
    // add contraints for ChildVC
    func childVCConstraints(_ vc: UIViewController) {
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        vc.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -220).isActive = true
        vc.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        vc.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        vc.view.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    
    @IBAction func chooseVCsegmentControlSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            addChildVC(firstChildVC)
        case 1:
            addChildVC(secondChildVC)
        default:
            break
        }
        
    }
    
  
}

