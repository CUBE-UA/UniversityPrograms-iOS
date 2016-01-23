//
//  EventViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/22/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
		
		title = "Events"
		
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
