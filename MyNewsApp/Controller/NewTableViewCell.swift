//
//  NewTableViewCell.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import UIKit

class NewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var NewImageView: UIImageView!
    
    @IBOutlet weak var NewTitleLabel: UILabel!
    @IBOutlet weak var NewDescriptionLabel: UILabel!
    
    @IBOutlet weak var NewDetailButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
