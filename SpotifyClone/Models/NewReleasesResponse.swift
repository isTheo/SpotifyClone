//
//  NewReleasesResponse.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 05/07/24.
//

import Foundation


struct NewReleasesResponse: Codable {
    let albums: AlbumsResponse
}


struct AlbumsResponse: Codable {
    let items: [Album]
}


struct Album: Codable {
    let album_type: String
}



{
    albums =     {
        href = "https://api.spotify.com/v1/browse/new-releases?offset=0&limit=2&locale=en-GB,en;q%3D0.9";
        items =         (
            
        limit = 2;
        next = "https://api.spotify.com/v1/browse/new-releases?offset=2&limit=2&locale=en-GB,en;q%3D0.9";
        offset = 0;
        previous = "<null>";
        total = 100;
    };
}
