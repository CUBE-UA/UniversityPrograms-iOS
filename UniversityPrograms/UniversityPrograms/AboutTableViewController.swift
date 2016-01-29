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
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
		
		title = "About"
		
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "AboutCell")
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "LocationCell")
		tableView.registerNib(UINib(nibName: "AboutFooterCell", bundle: nil), forCellReuseIdentifier: "AboutFooterCell")
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
