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

}
