//
//  GroupPageViewController.swift
//  PracticeNav
//
//  Created by SmartPhoneClub on 3/15/16.
//  Copyright © 2016 SmartPhoneClub. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController{
    
    @IBOutlet weak var groupNameLabel: UILabel!  //holds the name of the group
    @IBOutlet weak var groupDescriptionLabel: UILabel!  //this hold the description text
    //TODO: add more later for meeting time contact etc
    
    var detailGroup: Group? {
        didSet{
            configureView()
        }
    }
    
    func configureView(){
        if let detailGroup = detailGroup{
            if let groupNameLabel=groupNameLabel, groupDescriptionLabel=groupDescriptionLabel{
                groupNameLabel.text=detailGroup.name
                groupDescriptionLabel.text=detailGroup.description
                title=detailGroup.name
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
