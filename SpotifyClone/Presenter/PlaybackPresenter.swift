//
//  PlaybackPresenter.swift
//  SpotifyClone
//
//  Created by Matteo Orru on 05/08/24.
//

import Foundation
import UIKit


final class PlaybackPresenter {
    
    static func startPlayback(from viewController: UIViewController, track: AudioTrack) {
        let vc = PlayerViewController()
        viewController.present(vc, animated: true, completion: nil)
    }
    
    
    
    
    
    static func startPlayback(from viewController: UIViewController, tracks: AudioTrack) {
        
    }
    
    
    
    
    
    
}