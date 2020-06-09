//
//  HomeTableViewCell.swift
//  iResume
//
//  Created by User on 6/8/20.
//  Copyright © 2020 Shakhzod. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var topShadowView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var surnameLbl: UILabel!
    @IBOutlet weak var phoneNumberLbl: UILabel!
    @IBOutlet weak var workExperienceLbl: UILabel!
    @IBOutlet weak var companyNameLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var yearsLbl: UILabel!
    @IBOutlet weak var secondCompanyLbl: UILabel!
    @IBOutlet weak var secondPositionLbl: UILabel!
    @IBOutlet weak var secondYearsLbl: UILabel!
    @IBOutlet weak var qualificationsTitleLbl: UILabel!
    @IBOutlet weak var qualificationsLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupViews()
    }

    func setupViews(){
        
               self.nameLbl.font = UIFont.iresume.generalFont
               self.surnameLbl.font = UIFont.iresume.generalFont
               self.phoneNumberLbl.font = UIFont.iresume.generalFont
               self.workExperienceLbl.font = UIFont.iresume.titleFont
               self.companyNameLbl.font = UIFont.iresume.generalFont
               self.positionLbl.font = UIFont.iresume.generalFont
               self.yearsLbl.font = UIFont.iresume.generalFont
               self.secondCompanyLbl.font = UIFont.iresume.generalFont
               self.secondYearsLbl.font = UIFont.iresume.generalFont
               self.qualificationsTitleLbl.font = UIFont.iresume.titleFont
               self.qualificationsLbl.font = UIFont.iresume.generalFont
               self.titleLbl.font = UIFont.iresume.titleFont
               
               self.imgView.layer.cornerRadius = self.imgView.frame.width/2
        
                self.firstView.layer.cornerRadius = 10
                self.firstView.layer.borderColor = UIColor.systemPink.cgColor
                self.firstView.layer.borderWidth = 2
        
                self.secondView.layer.cornerRadius = 10
                self.secondView.layer.borderColor = UIColor.systemPink.cgColor
                self.secondView.layer.borderWidth = 2
        
                self.thirdView.layer.cornerRadius = 10
                self.thirdView.layer.borderColor = UIColor.systemPink.cgColor
                self.thirdView.layer.borderWidth = 2
                
                self.fourthView.layer.cornerRadius = 10
                self.fourthView.layer.borderColor = UIColor.systemPink.cgColor
                self.fourthView.layer.borderWidth = 2
        
    }

    
}
