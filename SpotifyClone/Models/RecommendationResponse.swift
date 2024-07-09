//
//  RecommendationResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 09/07/24.
//

import Foundation


struct RecommendationResponse: Codable {
    let tracks: [AudioTrack]
}
