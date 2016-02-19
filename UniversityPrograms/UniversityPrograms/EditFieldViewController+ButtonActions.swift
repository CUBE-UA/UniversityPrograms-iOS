//
//  EditFieldViewController+ButtonActions.swift
//  UniversityPrograms
//
//  Created by greyson on 2/19/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension EditFieldViewController {
	
	func saveButtonTapped() {
		
		NSUserDefaults.standardUserDefaults().setValue(textView.text, forKey: title!)
		NSUserDefaults.standardUserDefaults().synchronize()
		
		navigationController?.popToRootViewControllerAnimated(true)
		
		delegate?.fieldSaved(title!, value: textView.text)
		
	}
	
}
