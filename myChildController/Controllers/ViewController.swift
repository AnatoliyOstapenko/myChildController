//
//  ViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var childVCModel = ChildVCModel()
    
    let secondChildVC = SecondChildViewController()
    let firstChildVC: FirstChildViewController = {
        let firstChildVC = FirstChildViewController()
        return firstChildVC
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUp()
    }
    
    func popUp() {
        // asyncAfter is mandatory to animate pop-up view
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            let popModel = PopUpModel()
            self.view.addSubview(popModel)
        }
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
    
    @IBAction func showPopUpButtonPressed(_ sender: UIBarButtonItem) {
        // asyncAfter is mandatory to animate pop-up view
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            let popModel = PopUpModel()
            self.view.addSubview(popModel)
        }
    }
    
    @IBAction func goToNextVC(_ sender: UIBarButtonItem) {
        
    }
    
  
}

