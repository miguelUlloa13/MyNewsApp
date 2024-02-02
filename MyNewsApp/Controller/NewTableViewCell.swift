//
//  NewTableViewCell.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import UIKit

class NewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var CellHorizontalStackView: UIStackView!
    
    @IBOutlet weak var NewImageView: UIImageView!
    
    @IBOutlet weak var NewTitleLabel: UILabel!
    @IBOutlet weak var NewDescriptionLabel: UILabel!
    
    @IBOutlet weak var NewDetailButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Set color to items
        self.backgroundColor = .clear
        self.CellHorizontalStackView.backgroundColor = .cellBackGround
        
        
        customButton()
        customLabels()
        
    }
    
    private func customButton() {
        NewDetailButton.contentHorizontalAlignment = .right
        NewDetailButton.setTitle("Ver más", for: .normal)
    }
    
    private func customLabels() {
        NewTitleLabel.myCustomFont(font: .TimesNewRomanPS_BoldMT)
        NewDescriptionLabel.myCustomFont(size: 17, textAlignment: .left)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
