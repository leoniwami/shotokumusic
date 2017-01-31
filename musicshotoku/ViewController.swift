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
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func koiplay() {
        // サウンドデータの読み込み。ファイル名は"kane01"。拡張子は"mp3"
        let audioPath = NSURL(fileURLWithPath: Bundle.main.path(forResource: "koi", ofType: "mp3")!)
        
        // swift2系からtryでエラー処理するようなので、do〜try〜catchで対応
        do {
            // AVAudioPlayerを作成。もし何かの事情で作成できなかったらエラーがthrowされる
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath as URL)
            
            // イベントを通知したいUIViewControllerをdelegateに登録
            // delegateの登録するならAVAudioPlayerDelegateプロトコルの継承が必要
            audioPlayer.delegate = self
            
            // これで再生
            audioPlayer.play()
        }
        
        catch {
            print("AVAudioPlayer error")
        }
    }
    
    @IBAction func nanimonoplay() {
        // サウンドデータの読み込み。ファイル名は"kane01"。拡張子は"mp3"
        let audioPath = NSURL(fileURLWithPath: Bundle.main.path(forResource: "nanimono", ofType: "mp3")!)
        
        // swift2系からtryでエラー処理するようなので、do〜try〜catchで対応
        do {
            // AVAudioPlayerを作成。もし何かの事情で作成できなかったらエラーがthrowされる
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath as URL)
            
            // イベントを通知したいUIViewControllerをdelegateに登録
            // delegateの登録するならAVAudioPlayerDelegateプロトコルの継承が必要
            audioPlayer.delegate = self
            
            // これで再生
            audioPlayer.play()
        }
            
        catch {
            print("AVAudioPlayer error")
        }
    }

    @IBAction func zenzenplay() {
        // サウンドデータの読み込み。ファイル名は"kane01"。拡張子は"mp3"
        let audioPath = NSURL(fileURLWithPath: Bundle.main.path(forResource: "zenzen", ofType: "mp3")!)
        
        // swift2系からtryでエラー処理するようなので、do〜try〜catchで対応
        do {
            // AVAudioPlayerを作成。もし何かの事情で作成できなかったらエラーがthrowされる
            audioPlayer = try AVAudioPlayer(contentsOf: audioPath as URL)
            
            // イベントを通知したいUIViewControllerをdelegateに登録
            // delegateの登録するならAVAudioPlayerDelegateプロトコルの継承が必要
            audioPlayer.delegate = self
            
            // これで再生
            audioPlayer.play()
        }
            
        catch {
            print("AVAudioPlayer error")
        }
    }

}

