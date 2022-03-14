//
//  ViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var childManager = ChildManager()
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
        childManager.childVCConstraints(vc, self)
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

