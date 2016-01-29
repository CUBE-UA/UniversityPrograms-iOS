//
//  FieldTableViewCell.swift
//  UniversityPrograms
//
//  Created by greyson on 1/29/16.
//  Copyright © 2016 Greyson Wright. All rights reserved.
//

import UIKit

class FieldTableViewCell: UITableViewCell {

	@IBOutlet var mainLabel: UILabel!
	@IBOutlet var valueLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
