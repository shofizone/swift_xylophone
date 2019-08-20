//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        playSound(noteNumber: sender.tag)
        
    }
    
  
    var player: AVAudioPlayer?
    
    func playSound(noteNumber : Int) {
        let url = Bundle.main.url(forResource: "note\(noteNumber)", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url )
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
    }
    
}

