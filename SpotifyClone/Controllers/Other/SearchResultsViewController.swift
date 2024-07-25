//
//  SearchResultsViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct SearchSection {
        let title: String
        let results: [SearchResult]
    }
    
    
    private var sections: [SearchSection] = []
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        tableView.isHidden = true
        
        return tableView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .clear
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    
    
    func update(with results: [SearchResult]) {
        let artists = results.filter ({
            switch $0 {
            case .artist: return true
            default: return false
            }
            
        })
        self.sections = [
            SearchSection(title: "Artists", results: artists)
        ]
        
        tableView.reloadData()
        tableView.isHidden = results.isEmpty
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let result = sections[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "foo"
        
        return cell
    }
    
    

}
