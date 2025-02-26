//
//  Playlist.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import Foundation


struct Playlist: Codable {
    let description: String?
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]?
    let name: String
    let owner: User
}


