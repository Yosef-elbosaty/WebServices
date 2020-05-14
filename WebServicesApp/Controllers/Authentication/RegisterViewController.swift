//
//  RegisterViewController.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/11/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RegisterViewController: UIViewController {

    //Outlets Declaration
    @IBOutlet weak var nameTextField : UITextField!
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var confirmPasswordTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registerButtonPressed(sender : UIButton){
        guard let username = nameTextField.text?.trimmed  else{return}
        guard let email = emailTextField.text?.trimmed else{return}
        guard let password = passwordTextField.text  else{return}
        guard let confirmPassword = confirmPasswordTextField.text else{return}
        guard password == confirmPassword else{return}
        APIServices.register(username: username, email: email, password: password, confirmPassword: confirmPassword)
    }
}
