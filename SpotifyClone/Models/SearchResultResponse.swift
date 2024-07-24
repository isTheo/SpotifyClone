//
//  SearchResultResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 24/07/24.
//

import Foundation


struct SearchResultResponse: Codable {
    let albums: SearchAlbumResponse
    let artists: SearchArtistsResponse
    let playlists: SearchPlaylistsResponse
    let tracks: SearchTracksResponse
}



struct SearchAlbumResponse: Codable {
    let items: [Album]
}



struct SearchArtistsResponse: Codable {
    let items: [Artist]
}



struct SearchPlaylistsResponse: Codable {
    let items: [Playlist]
}



struct SearchTracksResponse: Codable {
    let items: [AudioTrack]
}
