//
//  EditFieldViewController+TextView.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

extension EditFieldViewController {

	func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
	
		if text == "\n"{
			
			textView.endEditing(false)
			saveButtonTapped()
			
			return false
			
		}
	
		return true
		
	}
	
}
