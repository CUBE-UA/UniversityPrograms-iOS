//
//  EditFieldViewController.swift
//  UniversityPrograms
//
//  Created by greyson on 1/28/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

protocol EditFieldDelegate {
	
	func fieldSaved(field: String, value: String)
	
}

class EditFieldViewController: UIViewController, UITextViewDelegate {
	
	@IBOutlet var textView: UITextView!
	
	var delegate: EditFieldDelegate?
	var textViewText: String?
	
	init(title: String, text: String?) {
		super.init(nibName: "EditFieldViewController" , bundle: nil)
		
		self.title = title
		textViewText = text
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Save, target: self, action: Selector("saveButtonTapped"))
		
		textView.text = textViewText
		
		if title == "Email" {
			
			textView.keyboardType = .EmailAddress
			
		} else if title == "CWID" {
			
			textView.keyboardType = .NumberPad
			
		} else if title == "Event Description" {
			
			textView.autocapitalizationType = .Sentences
			textView.returnKeyType = .Default
			textView.spellCheckingType = .Yes
			
		} else {
			
			textView.autocapitalizationType = .Words
			
		}
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func saveButtonTapped() {
		
		NSUserDefaults.standardUserDefaults().setValue(textView.text, forKey: title!)
		NSUserDefaults.standardUserDefaults().synchronize()
		
		navigationController?.popToRootViewControllerAnimated(true)
		
		delegate?.fieldSaved(title!, value: textView.text)
		
	}
	
}
