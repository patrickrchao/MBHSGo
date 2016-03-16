//
//  Group.swift
//  PracticeNav
//
//  Created by SmartPhoneClub on 3/15/16.
//  Copyright © 2016 SmartPhoneClub. All rights reserved.
//

import Foundation

class Group{
    var id: Int
    var name: String
    var description: String
    var user: String?
    var pass:String?
    var contact: String?
    var meeting: String?
    var time: String?
    var category: String? //later make it an enum and int
    
    init(id: Int, name: String, description: String, user: String, pass:String, contact: String, meeting: String, time: String, category: String){
        self.id=id
        self.name=name
        self.description=description
        self.user=user
        self.pass=pass
        self.contact=contact
        self.meeting=meeting
        self.time=time
        self.category=category
    }

    init(id: Int, name: String, description: String){
        self.id=id
        self.name=name
        self.description=description
    }
}