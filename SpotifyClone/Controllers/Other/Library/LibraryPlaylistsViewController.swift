//
//  LibraryPlaylistsViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/08/24.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
     
        APICaller.shared.getCurrentUserPlaylists { result in
            switch result {
            case .success(let playlists): break
            case .failure(let error): print(error.localizedDescription)
            }
        }
    }
    
    
}
