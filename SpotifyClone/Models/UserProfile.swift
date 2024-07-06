//
//  UserProfile.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

import Foundation


struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImage]
    
}







