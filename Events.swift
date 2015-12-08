//
//  Events.swift
//  dev.biapp
//
//  Created by Pavel Krai on 03/11/15.
//  Copyright © 2015 Pavel Krai. All rights reserved.
//

import UIKit

import UIKit

class Events: UITableViewController {
    
    
    var timesArray : [String] = ["9:00-10:20","10:30-11:50","12:10-13:30","13:40-15:00","15:10-16:30","16:40-18:00","18:10-19:30"]
    var subjects : [String] = ["smth","smth","smth","smth","smth","smth","smth"]
    var photoNameArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.registerNib(UINib(nibName: "EventsCell", bundle: nil), forCellReuseIdentifier: "EventsCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 7
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : EventsCell = tableView.dequeueReusableCellWithIdentifier("EventsCell") as! EventsCell
        
        // Configure the cell...
        cell.time.text = timesArray[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 64.0
    }
}