//
//  SubmitEventTableViewController+TableView.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension SubmitEventTableViewController {

	// MARK: - Table view data source
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		
		return 3
	
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		if section < 2 {
		
			return 1
			
		}
		
		return 2
		
	}
	
	override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
		
		return 44
		
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCellWithIdentifier("FieldCell", forIndexPath: indexPath) as! FieldTableViewCell
		
		cell.mainLabel.text = fieldNames[indexPath.section + indexPath.row]
		cell.valueLabel.text = keys[indexPath.section + indexPath.row]
		
		return cell
		
	}
	
	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
		
		tableView.deselectRowAtIndexPath(indexPath, animated: true)
		
		let editFieldVC = EditFieldViewController(nibName: "EditFieldViewController", bundle: nil, title: fieldNames[indexPath.section + indexPath.row], text: keys[indexPath.section + indexPath.row])
		editFieldVC.delegate = self
		navigationController?.pushViewController(editFieldVC, animated: true)
		
	}
	
}
