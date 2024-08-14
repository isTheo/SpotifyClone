//
//  LibraryViewController.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import UIKit

class LibraryViewController: UIViewController {
    
    private let playlistsVC = LibraryPlaylistsViewController()
    private let albumsVC = LibraryAlbumsViewController()
    
    private var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        
        return scrollView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        scrollView.delegate = self
        view.addSubview(scrollView)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.frame = CGRect(
            x: 55,
            y: view.safeAreaInsets.top+55,
            width: view.width,
            height: view.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-55
        )
    }
    
    
    
}



extension LibraryViewController: UIScrollViewDelegate {
    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        //
    }
}
