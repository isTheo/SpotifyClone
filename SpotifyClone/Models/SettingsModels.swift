//
//  SettingsModels.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 25/06/24.
//

import Foundation


struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
    
}
