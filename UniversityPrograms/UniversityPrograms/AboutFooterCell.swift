//
//  AboutFooterCell.swift
//  UniversityPrograms
//
//  Created by greyson on 1/25/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class AboutFooterCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
	@IBAction func facebookButtonTapped(sender: AnyObject) {
		
		print("fb")
		
	}
	
	@IBAction func googleplusButtonTapped(sender: AnyObject) {
		print("g+")
	}
	
	@IBAction func twitterButtonTapped(sender: AnyObject) {
		
		print("twitter")
		
	}
	
}
