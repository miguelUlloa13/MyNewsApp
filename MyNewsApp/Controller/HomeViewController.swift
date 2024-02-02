//
//  HomeViewController.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Outlets
        // Labels
    @IBOutlet weak var HomeTitleLabel: UILabel!
        
        // TableView
    @IBOutlet weak var NewsTableView: UITableView!
    
    // MARK: - Properties
    let apiClient = APIClient()
    var news = [NewDataModel]()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Home"
        NewsTableView.delegate = self
        NewsTableView.dataSource = self
        NewsTableView.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "NewTableViewCell")
        NewsTableView.backgroundColor = .clear
        
        customLabels()
        getNews()
        
    }
    
    // MARK: - Methods
    
    private func customLabels() {
        HomeTitleLabel.text = "NEWS TODAY"
        HomeTitleLabel.myCustomFont(size: 50,font: .TimesNewRomanPS_BoldItalicMT)
        HomeTitleLabel.underline()
    }
    
    private func getNews(){
        Task {
            let result = await apiClient.getNews()
            switch result {
            case .success(let model):
                news = model.articles
            case .failure(let error):
                print(error)
            }
        }
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewTableViewCell", for: indexPath) as! NewTableViewCell

        cell.NewTitleLabel.text = "Titulo"
        cell.NewDescriptionLabel.text = "Descripcion"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }

    
}
