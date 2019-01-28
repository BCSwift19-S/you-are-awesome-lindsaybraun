//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lindsay Braun on 1/21/19.
//  Copyright © 2019 Lindsay Braun. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar needs help, they call you",
                        "You Brighten My Day!",
                        "You Make Me Smile!",
                        "I can't wait to download your app!"]
        
        var newIndex : Int
        
        // Show a message
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        // Show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        }while soundIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Get a random number to use in our soundName file
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while imageIndex == newIndex
        
        soundIndex = newIndex
        
        //Play a sound
        var soundName = "sound\(soundIndex)"
        // can we load in the file soundName
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in\(soundName) couldn't be played as a sound.")
            }
            
            
        }else{
            //if reading in the NSDataAsset didn't work, report the error
            print("ERROR: file\(soundName) didn't load")
        }
    }
    
}

