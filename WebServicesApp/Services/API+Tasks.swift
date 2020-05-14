//
//  API+Tasks.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/13/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

extension APIServices{
    class func tasks(completion : (_ error : Error?, _ task : [Task]?)-> Void){
        
        guard let token = Helper.getAPIToken() else{
            completion(nil,nil)
            return
        }
        
        let taskURL = URL.taskURL
        let params = ["api_token" : token]
        Alamofire.request(taskURL, method: .get, parameters: params).responseJSON { (response) in
            switch response.result{
            case .success :
                let taskJSON = JSON(response.value!)
                guard let dataArray = taskJSON["data"].array else{
                    return
                }
                
                var tasks = [Task]()
                for data in dataArray{
                    guard let data = data.dictionary else{return}
                    let task = Task()
                    task.id = data["id"]?.int ?? 0
                    task.completed = data["completed"]?.bool ?? false
                    task.task = data["task"]?.string ?? ""
                    
                    tasks.append(task)
                    
                }
               
            case .failure : print(response.result.error!)
            }
            
        }
    }
}
