//
//  ProGS8TableViewCell.swift
//  DynamicCellHeight
//
//  Created by Don Mini on 3/10/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ProGS8TableViewCell: UITableViewCell {

	@IBOutlet weak var PeopleDrivenValue: UILabel!
	@IBOutlet weak var PeopleDrivenLabel: UILabel!
	
	@IBOutlet weak var RidesTakenValue: UILabel!
	@IBOutlet weak var RidesTakenLabel: UILabel!
	
	@IBOutlet weak var KmSharedValue: UILabel!
	@IBOutlet weak var KmSharedLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
