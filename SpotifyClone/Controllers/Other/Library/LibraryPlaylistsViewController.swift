//
//  LibraryPlaylistsViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/08/24.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {
    
    var playlists = [Playlist]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
     
        APICaller.shared.getCurrentUserPlaylists { result in
            switch result {
            case .success(let playlists):
                self.playlists = playlists
                self.updateUI()
            case .failure(let error): print(error.localizedDescription)
            }
        }
    }
    
    
    
    private func updateUI() {
        if playlists.isEmpty {
            //show label
        } else {
            //show table
        }
    }
    
    
}
