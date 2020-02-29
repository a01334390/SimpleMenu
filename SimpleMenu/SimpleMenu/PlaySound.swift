//
//  PlaySound.swift
//  SimpleMenu
//
//  Created by Fernando Martin Garcia Del Angel on 29/02/20.
//  Copyright © 2020 Fernando Martin Garcia Del Angel. All rights reserved.
//

import Foundation
import AVFoundation

// MARK: - Audio Player
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, format: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: format) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldn't play the sound file")
        }
    }
}
