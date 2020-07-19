//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    
    override func viewDidLoad() {
        progressBar.isHidden = true
    }
    
    //Variables
    var player: AVAudioPlayer!
    var timer = Timer()

    let eggTimes = [
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
        
    var secondsPassed = 0
    var secondsTotal = 0
    
    
    // A way of boiling egg is selected
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()  //create a brand-new timer
        
        progressBar.isHidden = false
    
        let hardness = sender.currentTitle! //Can ONLY be one of Soft, Medium, or Hard
        
        titleLabel.text = hardness
        
        secondsTotal = eggTimes[hardness]!
        secondsPassed = 0

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    
    //Timer helper method
    @objc func updateTimer() {
        if secondsPassed < secondsTotal {
            secondsPassed += 1
            updateProgressBar()
        } else {
            timer.invalidate()
            playSound(soundName: "alarm_sound")
            titleLabel.text = "Done!"
        }
    }
    
    func updateProgressBar() {
        progressBar.progress = Float(secondsPassed) / Float(secondsTotal)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
