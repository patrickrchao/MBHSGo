//
//  SearchViewController.swift
//  PracticeNav
//
//  Created by SmartPhoneClub on 3/15/16.
//  Copyright © 2016 SmartPhoneClub. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController{
    var groupViewControl: GroupViewController?=nil
    var groups=[Group]() //a list of the groups
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groups=[
            Group(id: 1, name: "Yoga Club",description: "We do yoga"),
            Group(id: 2, name: "Smash Club",description: "We play smash"),
            Group(id: 3, name: "Track",description: "We do track")
        ]
        if let splitViewController = splitViewController {
            let controllers = splitViewController.viewControllers
            groupViewControl = (controllers[controllers.count - 1] as! UINavigationController).topViewController as?     GroupViewController
        }
    }
    override func viewWillAppear(animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.collapsed
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //return the desired number of rows
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let g=groups[indexPath.row]
        
        cell.textLabel!.text=g.name
        cell.detailTextLabel!.text=g.description
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail"{
            if let indexPath=tableView.indexPathForSelectedRow{
                let g=groups[indexPath.row]
                let controller=(segue.destinationViewController as! UINavigationController).topViewController as! GroupViewController
                controller.detailGroup=g
                controller.navigationItem.leftBarButtonItem=splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton=true
            }
        }
    }
    
}
