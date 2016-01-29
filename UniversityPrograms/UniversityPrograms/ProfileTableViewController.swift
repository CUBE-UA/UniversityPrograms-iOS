//
//  ProfileTableViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/28/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController, EditFieldDelegate {
	
	let profileFields = ["Email", "Name", "CWID"]
	var profileKeys = ["", "", ""]
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

		tableView.registerNib(UINib(nibName: "FieldTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
		tableView.registerNib(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "EventCell")
		
		getFieldValues()
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

	func getFieldValues() {
		
		for var i = 0; i < profileFields.count; ++i {
			
			let value = NSUserDefaults.standardUserDefaults().valueForKey(profileFields[i]) as? String
			
			if value != nil {
				
				profileKeys[i] = value!
				
			}
			
		}
		
	}
	
}
