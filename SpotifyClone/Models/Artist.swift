//
//  Artist.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import Foundation


struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
