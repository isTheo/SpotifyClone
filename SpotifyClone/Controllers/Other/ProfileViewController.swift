//
//  ProfileViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile"
        fetchProfile()
        view.backgroundColor = .systemBackground
        
        

    }
    
    private func fetchProfile() {
        APICaller.shared.getCurrentUserProfile { result in
            switch result {
            case .success (let model):
                break
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
}
