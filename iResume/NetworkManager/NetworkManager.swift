//
//  NetworkManager.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//

import UIKit
import Foundation

typealias NetworkCb = ([String : Any]?, Int ) -> Void

class NetworkManager
{
    static let shared = NetworkManager()
    
    private init(){}
    
    private let rootPath = "https://gist.githubusercontent.com/"
    
    func Get(suffix: String,callback: @escaping NetworkCb)
    {
        receiveUserData(suffix: suffix, callback: callback)
    }


    func receiveUserData(suffix: String, callback: @escaping NetworkCb) {
        let requestURL: NSURL = NSURL(string: rootPath + suffix)!
         let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: requestURL as URL)
         let session = URLSession.shared
         let task = session.dataTask(with: urlRequest as URLRequest) {
               (data, response, error) -> Void in
           
            guard let dataResponse = data,
                   error == nil else {
                   print(error?.localizedDescription ?? "Response Error")
                   return }
             do{
                 //here dataResponse received from a network request
                 let jsonResponse = try JSONSerialization.jsonObject(with:
                                        dataResponse, options: [])
                 print(jsonResponse) //Response result
                callback(jsonResponse as? [String : Any], 200)
              } catch let parsingError {
                 print("Error", parsingError)
            }
//                 if let data = data {
//                   if let jsonString = String(data: data, encoding: .utf8) {
//                      print(jsonString)
//
//                        callback( jsonString, statusCode)
//
//
//
//                   }
//
//
           }
               task.resume()
              
    }
}
