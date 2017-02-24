//
//  PopQuizTableViewCell.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import UIKit

class PopQuizTableViewCell: UITableViewCell {
    @IBOutlet weak var Question: UITextField!
    @IBOutlet weak var option1: UITextField!
    @IBOutlet weak var option2: UITextField!
    @IBOutlet weak var option3: UITextField!
   
    @IBOutlet weak var option4: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

