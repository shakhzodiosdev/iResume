//
//  UserExperience.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//


import Foundation

class UserExperience {
    var company : String!
    var year : String!
    var position : String!
  
    
    init(json: [String : Any])
    {
        self.company = json["company"] as? String
        self.year = json["year"] as? String
        self.position = json["position"] as? String
    }
}
