//
//  Event.swift
//  PracticeNav
//
//  Created by SmartPhoneClub on 3/16/16.
//  Copyright © 2016 SmartPhoneClub. All rights reserved.
//

import Foundation

class Event{
    let id: Int
    var groupid: Int
    var title: String
    var desc: String
    var loc: String?
    var startTime: String?
    var endTime: String?
    var startDate: String?
    var endDate: String?
    
    init(id: Int, groupid: Int, title: String, desc: String, loc: String?, startTime: String?, endTime: String?, startDate: String?, endDate: String?){
        self.id=id
        self.groupid=groupid
        self.title=title
        self.desc=desc
        self.loc=loc
        self.startTime=startTime
        self.endTime=endTime
        self.startDate=startDate
        self.endDate=endDate
    }
    
    init(id: Int, groupid: Int, title: String, desc: String){
        self.id=id
        self.groupid=groupid
        self.title=title
        self.desc=desc
    }
}

