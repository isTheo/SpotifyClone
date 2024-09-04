//
//  LibraryAlbumsResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 04/09/24.
//

import Foundation


struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
    
}


struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
