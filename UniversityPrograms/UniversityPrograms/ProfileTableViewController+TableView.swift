//
//  ProfileTableViewController+TableView.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension ProfileTableViewController {

	
	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		
		return 2
		
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		if section == 0 {
			
			return 3
			
		}
		
		return 2
		
	}
	
	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		
		if indexPath.section == 0 {
			
			return 44
			
		}
		
		return 180
		
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		var cell: UITableViewCell?
		
		if indexPath.section == 0 {
			
			cell = tableView.dequeueReusableCellWithIdentifier("ProfileCell", forIndexPath: indexPath) as! ProfileTableViewCell
			(cell as! ProfileTableViewCell).mainLabel.text = Array(profileFields.keys)[indexPath.row]
			(cell as! ProfileTableViewCell).valueLabel.text = profileFields[Array(profileFields.keys)[indexPath.row]]
			
		} else {
			
			cell = tableView.dequeueReusableCellWithIdentifier("EventCell", forIndexPath: indexPath) as! EventTableViewCell
			
		}
		
		return cell!
		
	}
	
	override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		
		if section == 1 {
			
			return 22
			
		}
		
		return 0
		
	}
	
	override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		
		if section == 1 {
			
			return "My Events"
			
		}
		
		return nil
		
	}
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
		
		if indexPath.section == 0 {
			
			shouldReloadTableView = true
			
			let editFieldVC = EditFieldViewController(nibName: "EditFieldViewController", bundle: nil)
			editFieldVC.delegate = self
			editFieldVC.title = Array(profileFields.keys)[indexPath.row]
			navigationController?.pushViewController(editFieldVC, animated: true)
			
		} else {
			
			let eventVC = EventViewController(nibName: "EventViewController", bundle: nil)
			navigationController?.pushViewController(eventVC, animated: true)
			
		}
		
	}
	
}
