//
//  String+Extension.swift
//  WebServicesApp
//
//  Created by yosef elbosaty on 5/11/20.
//  Copyright © 2020 yosef elbosaty. All rights reserved.
//

import Foundation

extension String{
    var trimmed : String{
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
