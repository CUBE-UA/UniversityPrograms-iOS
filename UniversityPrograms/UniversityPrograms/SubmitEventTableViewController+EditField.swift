//
//  SubmitEventTableViewController+EditField.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension SubmitEventTableViewController {

	func fieldSaved(field: String, value: String) {
		
		for var i = 0; i < fieldNames.count; ++i {
			
			if fieldNames[i] == field {
				
				keys[i] = value
				
			}
			
		}
		
		tableView.reloadData()
		
	}
	
}
