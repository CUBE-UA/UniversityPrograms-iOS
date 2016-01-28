//
//  EventsTableViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class EventsTableViewController: UITableViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()

		title = "Events"
		
		tableView.registerNib(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "EventCell")
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		
		return 180
		
	}
	
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
        return 1
		
    }
	
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! EventTableViewCell


        return cell
		
    }
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		let eventVC = EventViewController(nibName: "EventViewController", bundle: nil)
		navigationController?.pushViewController(eventVC, animated: true)
		
	}
    
}
