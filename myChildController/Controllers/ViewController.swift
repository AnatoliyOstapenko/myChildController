//
//  ViewController.swift
//  myChildController
//
//  Created by AnatoliiOstapenko on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var childVCModel = ChildVCModel()
    var index = 0
    //let popUpModel = PopUpModel()
    
    let secondChildVC = SecondChildViewController()
    let firstChildVC: FirstChildViewController = {
        let firstChildVC = FirstChildViewController()
        return firstChildVC
    }()
    let twitterVC = TwitterViewController()
    

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
    func goToTwitterVC() {
        let vc = TwitterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
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
        popUp()
   
    }
    
    @IBAction func goToNextVC(_ sender: UIBarButtonItem) {
        goToTwitterVC()
    }
    
  
}

