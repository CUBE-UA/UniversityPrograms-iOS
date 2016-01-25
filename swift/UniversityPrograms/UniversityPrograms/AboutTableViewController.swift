//
//  AboutTableViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {
	
	let aboutTitles = ["People", "About UP"]
	
    override func viewDidLoad() {
        super.viewDidLoad()

		title = "About"
		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "doneButtonTapped")
		
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "AboutCell")
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "LocationCell")
		tableView.registerNib(UINib(nibName: "AboutFooterCell", bundle: nil), forCellReuseIdentifier: "AboutFooterCell")
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		
        return 2
		
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		if section == 0 {
		
			return 2
			
		}
		
		return 1
		
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		var cell: UITableViewCell?
		
		if indexPath.section == 0 {
		
			cell = tableView.dequeueReusableCellWithIdentifier("AboutCell", forIndexPath: indexPath)
			cell!.textLabel!.text = aboutTitles[indexPath.row]
			
		} else {
			
			cell = tableView.dequeueReusableCellWithIdentifier("LocationCell", forIndexPath: indexPath)
			cell!.textLabel!.text = "Locate UP"
			
		}
	
        return cell!
		
    }
	
	override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
		
		if section == 1 {
		
			return 44
			
		}
		
		return 0
		
	}
	
	override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
		
		if section == 1 {
			
			let aboutFooterCell = tableView.dequeueReusableCellWithIdentifier("AboutFooterCell") as! AboutFooterCell
			
			return aboutFooterCell
			
		}
		
		return nil
		
	}
	
	//MARK: - NavBar
	
	func doneButtonTapped() {
		
		dismissViewControllerAnimated(true, completion: nil)
		
	}
    
}
