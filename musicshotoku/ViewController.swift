//
//  ViewController.swift
//  musicshotoku
//
//  Created by Leon Iwami on 2017/01/31.
//  Copyright © 2017年 Leon Iwami. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController ,AVAudioPlayerDelegate {
    
    @IBOutlet var koi: UIButton!
    @IBOutlet var zenzen: UIButton!
    @IBOutlet var nanimono: UIButton!
    @IBOutlet var piko: UIButton!
    @IBOutlet var all: UIButton!
    @IBOutlet var pause: UIButton!
    
    @IBAction func play() {
        playerArray[0].play()
    }
    @IBAction func play1() {
        playerArray[1].play()
    }
    @IBAction func play2() {
        playerArray[2].play()
    }
    
    @IBAction func allplay() {
        for i in 0 ..< playerArray.count {
            playerArray[i].play()
        }
    }
    
    @IBAction func pausemusic() {
        for i in 0 ..< playerArray.count {
            playerArray[i].pause()
        }
    }
    
    //var audioPlayer: AVAudioPlayer!
    
    var playerArray: [AVAudioPlayer] = []
    
    let filenameArray: [String] = ["koi","piko","zenzen"]
    let fileType: String? = "mp3"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setups after loading the view, typically from a nib.
        
        for i in 0 ..< filenameArray.count {
            let url = Bundle.main.url(forResource: filenameArray[i], withExtension: fileType)
            
            if let url = url{
                do {
                    playerArray.append(try AVAudioPlayer(contentsOf: url))
                } catch {
                    fatalError("Failed to initialize a player.")
                }
            } else {
                fatalError("Url is nil.")
            }
            
        }
        
        //        let url = Bundle.main.url(forResource: fileName, withExtension: fileType)
        //
        //        if let url = url{
        //            do {
        //                player = try AVAudioPlayer(contentsOf: url)
        //            } catch {
        //                fatalError("Failed to initialize a player.")
        //            }
        //        } else {
        //            fatalError("Url is nil.")
        //        }
        //
        //        let url1 = Bundle.main.url(forResource: fileName1, withExtension: fileType)
        //
        //        if let url1 = url1{
        //            do {
        //                player1 = try AVAudioPlayer(contentsOf: url1)
        //            } catch {
        //                fatalError("Failed to initialize a player.")
        //            }
        //        } else {
        //            fatalError("Url is nil.")
        //        }
        //
        //        let url2 = Bundle.main.url(forResource: fileName2, withExtension: fileType)
        //
        //        if let url2 = url2{
        //            do {
        //                player2 = try AVAudioPlayer(contentsOf: url2)
        //            } catch {
        //                fatalError("Failed to initialize a player.")
        //            }
        //        } else {
        //            fatalError("Url is nil.")
        //        }
        
    }
}

