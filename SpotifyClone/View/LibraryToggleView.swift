//
//  LibraryToggleView.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 15/08/24.
//

import UIKit

class LibraryToggleView: UIView {
    
    
    private let playlistButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Playlist", for: .normal)
        return button
    }()
    
    
    private let albumsButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Albums", for: .normal)
        return button
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        
        addSubview(playlistButton)
        addSubview(albumsButton)
        
        playlistButton.addTarget(self, action: #selector(didTapPlaylists), for: .touchUpInside)
        albumsButton.addTarget(self, action: #selector(didTapAlbums), for: .touchUpInside)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
    @objc func didTapPlaylists() {
        
    }
    
    
    @objc func didTapAlbums() {
        
    }
    
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        playlistButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        albumsButton.frame = CGRect(x: playlistButton.right, y: 0, width: 100, height: 50)
    }
    
    
    
    
    
}
