//
//  UserProfileController.swift
//  InstagramClone
//
//  Created by George Vardikos on 15/10/2018.
//  Copyright © 2018 gvardikos. All rights reserved.
//

import UIKit
import Firebase

class UserProfileCntroller: UICollectionViewController {
    
    override func viewDidLoad() {
        
        collectionView.backgroundColor = .white
        
        fetchUser()
    }
    
    fileprivate func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {return}
        
        Database.database().reference().child("users").child(userId).observeSingleEvent(of: .value, with: { (snapshot) in
            
            guard let dictionary = snapshot.value as? [String: Any] else {return}
            let username = dictionary["username"] as? String
            self.navigationItem.title = username
            
        }) { (error) in
            print("Failed to fecth user with error: \(error)")
        }
    }
    
}
