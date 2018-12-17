//
//  notificationCell.swift
//  Redeemed Youth App
//
//  Created by Roman Kucheryavyy on 12/17/18.
//  Copyright © 2018 Ross M. All rights reserved.
//

import UIKit

class notificationCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var ministryLabel: UILabel!
    @IBOutlet weak var notificationLabel: UITextView!
    
    func setLabel(label: Labels) {
        dateLabel.text = label.date
        ministryLabel.text = label.ministry
        notificationLabel.text = label.notificationText
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
