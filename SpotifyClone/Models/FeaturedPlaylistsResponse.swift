//
//  FeaturedPlaylistsResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 06/07/24.
//

import Foundation


struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}


struct CategoryPlaylistResponse: Codable {
    let playlists: PlaylistResponse
}


struct PlaylistResponse: Codable {
    let items: [Playlist]
}



struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
