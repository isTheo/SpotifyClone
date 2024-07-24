//
//  SearchResult.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 24/07/24.
//

import Foundation


enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
