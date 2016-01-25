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

		title = "University Programs"
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .Plain, target: self, action: "profileButtonTapped")
		navigationItem.leftBarButtonItem = UIBarButtonItem(title: "About", style: .Plain, target: self, action: "aboutButtonTapped")
		navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .Plain, target: nil, action: nil)
		
		tableView.registerNib(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "EventCell")
		
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		
		return 125
		
	}
	
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
        return 0
		
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
        let cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! EventTableViewCell


        return cell
		
    }
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		let eventVC = EventViewController(nibName: "EventViewController", bundle: nil)
		navigationController?.pushViewController(eventVC, animated: true)
		
	}
	
	//MARK: - NavBar
	func profileButtonTapped() {
		
		let profileVC = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
		navigationController?.pushViewController(profileVC, animated: true)
		
	}
	
	func aboutButtonTapped() {
		
		let aboutTableVC = AboutTableViewController(nibName: "AboutTableViewController", bundle: nil)
		let aboutNavController = UINavigationController(rootViewController: aboutTableVC)
		navigationController?.presentViewController(aboutNavController, animated: true, completion: nil)
		
	}
    
}
