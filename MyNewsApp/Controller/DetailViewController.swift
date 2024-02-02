//
//  DetailViewController.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import UIKit
import Kingfisher

// MARK: - DetailViewController
class DetailViewController: UIViewController {
    
    // MARK: - Outlets
        // Image
    @IBOutlet weak var NewDetailImageView: UIImageView!
        
        // Label
    @IBOutlet weak var NewTitleLabel: UILabel!
    
        // TextView
    @IBOutlet weak var NewContentTextView: UITextView!
    
    
    // MARK: - Properties
    var newDataModel: NewDataModel
    
    // MARK: - Constructor
    init(newDataModel: NewDataModel) {
        self.newDataModel = newDataModel
        super.init(nibName: nil, bundle: nil)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Populate NewTitleLabel
        NewTitleLabel.text = newDataModel.title
        NewTitleLabel.myCustomFont(size: 50,font: .TimesNewRomanPS_BoldItalicMT)

        // Populate NewContentTextView
        NewContentTextView.text = newDataModel.content
        NewContentTextView.isEditable = false
        NewContentTextView.font = UIFont(name: UIFont.nameOf.TimesNewRomanPSMT.rawValue, size: 20)
        
        // Set image to NewDetailImageView
        NewDetailImageView.kf.setImage(with: URL(string: newDataModel.urlToImage ?? ""))
    }

}
