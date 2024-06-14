//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 14/06/24.
//

// Handling all the authentication related logic.

import Foundation


final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "e7696031f77a4e6e8d502a6cd073f832"
        static let clientSecret = "9b5b8696fa1445a8b3f993098d199cc7"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
// Spotify uses the OAuth 2.0 standard which has principles of getting an access token on behalf of the user. Since that token expires after a certain number of times we need to get a refresh token.
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    
    
}
