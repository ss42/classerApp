//
//  ClassesTableViewCell.swift
//  H2HSDKIntegrationSample
//
//  Created by sanjay on 1/27/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class ClassesTableViewCell: UITableViewCell {

    @IBOutlet weak var classSchedule: UILabel!
    @IBOutlet weak var classDescription: UILabel!
    @IBOutlet weak var classTitle: UILabel!
    @IBOutlet weak var Author: UILabel!
    @IBOutlet weak var portrait: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.backgroundColor = Constants.Colors.secondaryColor
        // Configure the view for the selected state
    }

}
