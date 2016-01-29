//
//  ProfileTableViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/28/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController, EditFieldDelegate {
	
	var profileFields: [String : String] = ["Email" : "", "Name" : "", "CWID" : ""]
	var shouldReloadTableView = false
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
		
		title = "My Profile"
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		tableView.registerNib(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
		tableView.registerNib(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "EventCell")
		
		getFieldValues()
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func getFieldValues() {
		
		for key: String in profileFields.keys {
			
			let value = NSUserDefaults.standardUserDefaults().valueForKey(key) as? String
			
			if value != nil {
				
				profileFields[key] = value
				
			}
			
		}
		
	}
	
}
