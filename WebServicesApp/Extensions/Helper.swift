//
//  Helper.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/11/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import UIKit

class Helper : NSObject{
    
    class func restartApp(){
        guard let window = UIApplication.shared.keyWindow else{return}
        let sb = UIStoryboard(name: "Main", bundle: nil)
        var vc : UIViewController
        if getAPIToken() == nil{
            vc = sb.instantiateInitialViewController()!
        }else{
            vc = sb.instantiateViewController(withIdentifier: "main")
        }
        window.rootViewController = vc
        UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        
    }
 
    class func saveAPIToken(token : String){
        let defaults = UserDefaults.standard
        defaults.set(token, forKey: "token")
        defaults.synchronize()
        restartApp()
    }
    class func getAPIToken()->String?{
        let defaults = UserDefaults.standard
        
        return  defaults.object(forKey: "token") as? String
         
    }
    
}
