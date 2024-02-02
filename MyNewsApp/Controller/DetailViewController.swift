//
//  DetailViewController.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var newDataModel: NewDataModel
    
    init(newDataModel: NewDataModel) {
        self.newDataModel = newDataModel
        super.init(nibName: nil, bundle: nil)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}
