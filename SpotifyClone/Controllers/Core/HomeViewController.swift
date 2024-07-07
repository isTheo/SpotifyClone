//
//  ViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettings)
        )
        
        fetchData()
    }
    
    
    
    
    private func fetchData() {
        APICaller.shared.getRecommendedGenres() { _ in
            //
        }
    }
    
    
    
    
    @objc func didTapSettings() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}

