//
//  CustomTabBarController.swift
//  CustomTabBar
//
//  Created by rafiul hasan on 13/12/22.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    var homeViewController: HomeViewController!
    var secondViewController: SecondViewController!
    var actionViewController: ActionViewController!
    var thirdViewController: ThirdViewController!
    var fourthViewController: FourthViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.delegate = self
        homeViewController = HomeViewController()
        secondViewController = SecondViewController()
        actionViewController = ActionViewController()
        thirdViewController = ThirdViewController()
        fourthViewController = FourthViewController()
        
        homeViewController.tabBarItem.image = UIImage(named: "house")
        homeViewController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        secondViewController.tabBarItem.image = UIImage(systemName: "square.and.pencil.circle")
        secondViewController.tabBarItem.selectedImage = UIImage(systemName: "square.and.pencil.circle.fill")
        actionViewController.tabBarItem.image = UIImage(systemName: "plus.circle")
        actionViewController.tabBarItem.selectedImage = UIImage(systemName: "plus.circle.fill")
        thirdViewController.tabBarItem.image = UIImage(systemName: "chart.line.uptrend.xyaxis.circle")
        thirdViewController.tabBarItem.selectedImage = UIImage(systemName: "chart.line.uptrend.xyaxis.circle.fill")
        fourthViewController.tabBarItem.image = UIImage(systemName: "person.circle")
        fourthViewController.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")
        
        viewControllers = [homeViewController, secondViewController, actionViewController, thirdViewController, fourthViewController]
        for tabBarItem in tabBar.items! {
            tabBarItem.title = ""
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
    }
    
}

extension CustomTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.isKind(of: ActionViewController.self) {
            let vc =  ActionViewController()
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
            return false
        }
        return true
    }
}
