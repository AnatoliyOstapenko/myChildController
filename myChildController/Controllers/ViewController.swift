//
//  ViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var childVCModel = ChildVCModel()
    var popModel = PopUpModel()
    
    let secondChildVC = SecondChildViewController()
    let firstChildVC: FirstChildViewController = {
        let firstChildVC = FirstChildViewController()
        return firstChildVC
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(popModel)
    }

    @IBAction func chooseVCsegmentControlSelected(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            childVCModel.addChildVC(firstChildVC, self)
        case 1:
            childVCModel.addChildVC(secondChildVC, self)
        default:
            break
        }
        
    }
    
  
}

