//
//  ChatTableViewCell.swift
//  bb1
//
//  Created by Apurv Suman on 11/13/16.
//  Copyright © 2016 Apurv Suman. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    // MARK: Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var rentLabel: UILabel!
    @IBOutlet weak var chatTypeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
