//
//  NewReleasesCellViewModel.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 11/07/24.
//

import Foundation


struct NewReleasesCellViewModel: Codable {
    let name: String
    let artworkURL: URL?
    let numberOfTracks: Int
    let artistName: String
}
