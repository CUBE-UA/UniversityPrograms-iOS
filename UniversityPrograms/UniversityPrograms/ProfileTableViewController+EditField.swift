//
//  ProfileTableViewController+EditField.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension ProfileTableViewController {

	//MARK: EditFieldDelegate
	
	func fieldSaved() {
		
		getFieldValues()
		
		tableView.reloadData()
		
	}
	
}
