//
//  HomeViewController.swift
//  instagram_clone
//
//  Created by 윤기학 on 2/14/24.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController")
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated() {
        //Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
            
        }
    }
}
