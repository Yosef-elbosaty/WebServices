//
//  ViewController.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/10/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {

    //Outlets Declaration
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        guard let email = emailTextField.text, !email.isEmpty else{return}
        guard let password = passwordTextField.text, !password.isEmpty  else{return}
        APIServices.login(email: email, password: password)
        
        
        
    }
    
}

