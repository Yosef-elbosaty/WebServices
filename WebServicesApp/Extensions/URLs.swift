//
//  URLs.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/11/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import Foundation


struct URL{
    static let baseURL = "http://elzohrytech.com/alamofire_demo/api/v1/"
    
    /// POST {email , password}
    static let loginURL = baseURL+"login"
    /// POST {username, email , password, confirm password}
    static let registerURL = baseURL+"register"
    /// Get{token, page, per_page}
    static let taskURL = baseURL+"tasks"
}
