//
//  MainTabBarController.swift
//  InstagramClone
//
//  Created by George Vardikos on 15/10/2018.
//  Copyright © 2018 gvardikos. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        let redVC = UIViewController()
        redVC.view.backgroundColor = .red
        
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileCntroller(collectionViewLayout: layout)
        
        let navController = UINavigationController(rootViewController: userProfileController)
        
        navController.tabBarItem.image = UIImage(named: "profile_unselected")
        navController.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [navController, UIViewController()]
    }
    
}
