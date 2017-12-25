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
    
    
    

    var player = AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        print(sender.tag)
        var xyloSound = Bundle.main.url(forResource: "Note1", withExtension: "wav")
        
        do
        {
            player = try AVAudioPlayer(contentsOf: xyloSound!)
            guard let player = player else {
                return
            }
            
        }
        
        switch sender.tag {
        case 1:
            print("Play song 1")
        default:
            break
        }
        
        
    }
    
  

}

