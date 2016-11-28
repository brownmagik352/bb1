//
//  TempChatTableViewCell.swift
//  bb1
//
//  Created by Apurv Suman on 11/27/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class TempChatTableViewCell: UITableViewCell {
    
    // MARK: Properties
    
    @IBOutlet weak var circlePhoto: UIImageView!
    @IBOutlet weak var message: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
