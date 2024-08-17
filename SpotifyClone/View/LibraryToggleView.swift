//
//  LibraryToggleView.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 15/08/24.
//

import UIKit


protocol LibraryToggleViewDelegate: AnyObject {
    
    func libraryToggleViewDidTapPlaylists(_ toggleView: LibraryToggleView)
    func libraryToggleViewDidTapAlbums(_ toggleView: LibraryToggleView)
    
}



class LibraryToggleView: UIView {
    
    weak var delegate: LibraryToggleViewDelegate?
    
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
    
    
    private let indicatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 4
        return view
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)        
        
        addSubview(playlistButton)
        addSubview(albumsButton)
        
        playlistButton.addTarget(self, action: #selector(didTapPlaylists), for: .touchUpInside)
        albumsButton.addTarget(self, action: #selector(didTapAlbums), for: .touchUpInside)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
    @objc func didTapPlaylists() {
        delegate?.libraryToggleViewDidTapPlaylists(self)
    }
    
    
    @objc func didTapAlbums() {
        delegate?.libraryToggleViewDidTapAlbums(self)
    }
    
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        playlistButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        albumsButton.frame = CGRect(x: playlistButton.right, y: 0, width: 100, height: 50)
    }
    
    
    
    
    
}
