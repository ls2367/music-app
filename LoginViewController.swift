//
//  LoginViewController.swift
//  MusicApp
//
//  Created by Lisa Sternik on 12/6/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBAction func RegistrationButton(_ sender: Any) {
        self.performSegue(withIdentifier: "RegisterSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View has loaded successfully")
    }


}
