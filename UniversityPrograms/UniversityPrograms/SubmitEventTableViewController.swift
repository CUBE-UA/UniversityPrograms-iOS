//
//  SubmitEventTableViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class SubmitEventTableViewController: UITableViewController, EditFieldDelegate {
	
	let fieldNames = ["Organization (Optional)", "Event Description", "Desired Time", "Desired Location"]
	var keys = ["", "", "", ""]

	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
		
		title = "Submit Event"
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Submit", style: .Plain, target: self, action: Selector("submitButtonTapped"))
		navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .Plain, target: nil, action: nil)
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		tableView.registerNib(UINib(nibName: "FieldTableViewCell", bundle: nil), forCellReuseIdentifier: "FieldCell")
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
