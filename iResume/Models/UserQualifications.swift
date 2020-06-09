//
//  UserQualifications.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//

import Foundation

class UserQualifications {
    var value: String!
  
    
    init(json: [String : Any])
    {
        self.value = (json["value"] as! String)
    }
}

