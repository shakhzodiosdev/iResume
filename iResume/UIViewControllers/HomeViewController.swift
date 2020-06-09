//
//  HomeViewController.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
   
    @IBOutlet weak var tableView: UITableView!
    var userInfo : UserData!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadData()
        
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }
    
        
    func loadData(){
             let cb: NetworkCb = { [weak self] (jsonObject, statusCode) in
                 if ( statusCode == 200 )
                 {
                     if let json = jsonObject {
                        self?.userInfo = UserData.init(json: json["result"] as! [String : Any])
                        
                     }
                    
                    DispatchQueue.main.async {
                    self?.tableView.reloadData()
                    }
                 }
             }
    
    let suffix = "shakhzodiosdev/5e0f6a9a7f146c8de737081fd9b76cb8/raw/91676d897aec4affd3b89c2e37fe1b3f8826e6b8/CV"
    NetworkManager.shared.Get( suffix: suffix, callback: cb )
    }
}


extension HomeViewController : UITableViewDelegate {
    // Return the number of rows for the table.
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.userInfo != nil{
            return 1
        }
        return 0
    }

    // Provide a cell object for each row.
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // Fetch a cell of the appropriate type.
       let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
       
       // Configure the cell’s contents.
        cell.nameLbl.text = "Name : " + self.userInfo.name
        cell.surnameLbl.text = "Surname : " + self.userInfo.surname
        cell.phoneNumberLbl.text = "Contact number : " + self.userInfo.contactNumber
        cell.companyNameLbl.text = "Company : " + self.userInfo.userExperience[0].company
        cell.positionLbl.text = "Position : " + self.userInfo.userExperience[0].position
        cell.yearsLbl.text = "Years : " + self.userInfo.userExperience[0].year
        cell.secondCompanyLbl.text = "Company : " + self.userInfo.userExperience[1].company
        cell.secondPositionLbl.text = "Position : " + self.userInfo.userExperience[1].position
        cell.secondYearsLbl.text = "Years : " + self.userInfo.userExperience[1].year
        
        for item in self.userInfo.userQualifications{
            if item.value != self.userInfo.userQualifications[self.userInfo.userQualifications.count - 1].value{
                cell.qualificationsLbl.text! += item.value + ", "

            }else{
            cell.qualificationsLbl.text! += item.value
            }

        }
     
       return cell
    }
}


extension HomeViewController : UITableViewDataSource {
    
}



