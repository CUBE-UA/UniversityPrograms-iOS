//
//  EditFieldViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/28/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

protocol EditFieldDelegate {
	
	func fieldSaved()
	
}

class EditFieldViewController: UIViewController {

	@IBOutlet var textField: UITextField!
	
	var delegate: EditFieldDelegate?
	
    override func viewDidLoad() {
        super.viewDidLoad()

		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: Selector("saveButtonTapped"))
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


	
	func saveButtonTapped() {
		
		NSUserDefaults.standardUserDefaults().setValue(textField.text, forKey: title!)
		NSUserDefaults.standardUserDefaults().synchronize()
		
		navigationController?.popToRootViewControllerAnimated(true)
		
		delegate?.fieldSaved()
		
	}
	
}
