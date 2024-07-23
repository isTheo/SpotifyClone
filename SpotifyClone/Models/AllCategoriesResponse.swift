//
//  AllCategoriesResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 23/07/24.
//

import Foundation


struct AllCategoriesResponse: Codable {
    let categories: Categories
}


struct Categories: Codable {
    let items: [Category]
}


struct Category: Codable {
    let id: String
    let name: String
    let icons: [APIImage]
}


