//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by Sarah Al-Matawah on 07/05/2020.
//  Copyright © 2020 Sarah Al-Matawah. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    //MARK: Audio Var
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chimpunk, vader, echo, reverb
    }
    
    //MARK: Button Var
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureUI(.notPlaying)
    }
    
    //MARK: Manipulation Audio function
    @IBAction func playSoundForButton(_ sender: UIButton){
        switch(ButtonType(rawValue: sender.tag)!){
            case .slow: playSound(rate: 0.5)
            case .fast: playSound(rate: 1.5)
            case .chimpunk: playSound(pitch: 1000)
            case .vader: playSound(pitch: -1000)
            case .echo: playSound(echo: true)
            case .reverb: playSound(reverb: true)
        }
        
        configureUI(.playing)
    }
    
    //MARK: End Audio playback
    @IBAction func stopButtonPressed(_ sender: UIButton){
        stopAudio()
    }

}
