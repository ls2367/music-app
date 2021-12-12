//
//  LoginViewController.swift
//  MusicApp
//
//  Created by Lisa Sternik on 12/6/21.
//

//this is where artists can login
//missing is a back button and the secure
//password function see https://stackoverflow.com/questions/63095851/show-hide-password-how-can-i-add-this-feature

import UIKit

class LoginViewController: UIViewController {
    @IBAction func RegistrationButton(_ sender: Any) {
        self.performSegue(withIdentifier: "RegisterSegue", sender: self)
    }
    
    @IBAction func EmailLoginField(_ sender: UITextField) {
    }
    @IBAction func PasswordLoginButton(_ sender: UITextField) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("View has loaded successfully")
        
    }


}
