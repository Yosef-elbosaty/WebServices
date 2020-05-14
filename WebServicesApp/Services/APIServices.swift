//
//  APIServices.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/11/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class APIServices: NSObject {
   
    
    //MARK:- Login
    class func login(email : String, password : String){
              let params = ["email": email, "password":password]
        let loginURL = URL.loginURL
              Alamofire.request(loginURL, method: .post, parameters: params).responseJSON { (response) in
                  switch response.result{
                  case .success:
                      let loginJSON : JSON = JSON(response.value!)
                      print(loginJSON)
                    if let token = loginJSON["user"]["api_token"].string{
                        print("token\(token)")
                        Helper.saveAPIToken(token: token)
                    }
                      
                  case .failure:
                      print(response.result.error!)
                    
                  
                  }
              }
    }
    
    //MARK:- Register
    class func register(username : String, email : String, password : String, confirmPassword : String){
        let params = ["name":username, "email": email, "password":password,"password_confirmation" : confirmPassword]
        let RegisterURL = URL.registerURL
              Alamofire.request(RegisterURL, method: .post, parameters: params).responseJSON { (response) in
                  switch response.result{
                  case .success:
                      let registerJSON : JSON = JSON(response.value!)
                      print(registerJSON)
                      if let token = registerJSON["user"]["api_token"].string{
                        print("token\(token)")
                        Helper.saveAPIToken(token: token)
                       
                    }
                      
                  case .failure:
                      print(response.result.error!)

                  }
              }
    }


}
