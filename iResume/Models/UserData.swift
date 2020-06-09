//
//  UserData.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//

import Foundation

class UserData {
    var language: String!
    var surname: String!
    var userImg : String!
    var name : String!
    var contactNumber : String!
    var userQualifications = [UserQualifications]()
    var userExperience = [UserExperience]()
   
  
    
    init(json: [String : Any])
    {
        self.language = json["language"] as? String
        self.userImg = json["userImg"] as? String
        self.surname = json["surname"] as? String
        self.name = json["name"] as? String
        self.contactNumber = json["contactNumber"] as? String
        
        for item in json["qualifications"] as! [Any]{
            self.userQualifications.append(UserQualifications.init(json: (item as? [String:Any])!))
        }
        
        for item in json["companies"] as! [Any]{
            self.userExperience.append(UserExperience.init(json: (item as? [String:Any])!))
        }
    }
}

