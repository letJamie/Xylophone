//
//  ViewController.swift
//  Xylophone
//
//  Created by Jamie on 2020/06/13.
//  Copyright © 2020 Jamie. All rights reserved.
//



import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        //var name = self.title
        //playSound(name)
        playSound(name: sender.currentTitle!)
    }
    
    func playSound(name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
}
