//
//  birdsPage.swift
//  voiceapp
//
//  Created by R94 on 26/06/23.
//

import UIKit
import AVFoundation


class birdsPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    

    @IBOutlet weak var cv: UICollectionView!
    let  synth = AVSpeechSynthesizer()
    var bird = [UIImage(named: "bulbul"),UIImage(named: "chipmunk"),UIImage(named: "cock"),UIImage(named: "crow"),UIImage(named: "duck"),UIImage(named: "eagle"),UIImage(named: "hen"),UIImage(named: "kingfisher"),UIImage(named: "macaw"),UIImage(named: "pigeon"),UIImage(named: "sparrow"),UIImage(named: "bee eater"),UIImage(named: "canary"),UIImage(named: "cormorant"),UIImage(named: "crane bird"),UIImage(named: "flamingo"),UIImage(named: "goldfinch"),UIImage(named: "hawk"),UIImage(named: "hoopoe"),UIImage(named: "kestrel"),UIImage(named: "kite bird"),UIImage(named: "koel"),UIImage(named: "myna"),UIImage(named: "nightingale"),UIImage(named: "ostrich"),UIImage(named: "owl"),UIImage(named: "parrot"),UIImage(named: "peacock"),UIImage(named: "pelican"),UIImage(named: "penguin"),UIImage(named: "quail"),UIImage(named: "robin"),UIImage(named: "seagull"),UIImage(named: "starling"),UIImage(named: "swan")]
    var birdName =
    ["bulbul","chipmunk","cock","crow","duck","eagle","hen","kingfusher","macaw","pigen","sparrow","bee eater","canary","cormorant","ceane bird","flamingo","goldfinch","hawk","hoopoe","kestrel","kite bird","koel","myna","nightingale","ostrich","owl","parrot","peacock","pelican","penguin","quail","robin","seagull","starling","swan"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
   }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bird.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  birdsCollectionView
        cell.img.image = bird[indexPath.row]
        cell.nlabel.text = birdName[indexPath.row]
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "bulbul")
        }
        else if indexPath.row == 1
        {
            voice(voice: "chipmunk")
        }
        else if indexPath.row == 2
        {
            voice(voice: "cock")
        }
        else if indexPath.row == 3
        {
            voice(voice: "crow")
        }
        
        else if indexPath.row == 4
        {
            voice(voice: "duck")
        }
        else if indexPath.row == 5
        {
            voice(voice: "eagle")
        }
        else if indexPath.row == 6
        {
            voice(voice: "hen")
        }
        else if indexPath.row == 7
        {
            voice(voice: "kingfusher")
        }
        else if indexPath.row == 8
        {
            voice(voice: "macaw")
        }
        else if indexPath.row == 9
        {
            voice(voice: "pigen")
        }
        else if indexPath.row == 10
        {
            voice(voice: "sparrow")
        }
        else if indexPath.row == 11
        {
            voice(voice: "bee eater")
        }
        else if indexPath.row == 12
        {
            voice(voice: "canary")
        }
        else if indexPath.row == 13
        {
            voice(voice: "cormorant")
        }
        else if indexPath.row == 14
        {
            voice(voice: "ceane bird")
        }
        else if indexPath.row == 15
        {
            voice(voice: "flamingo")
        }
        else if indexPath.row == 16
        {
            voice(voice: "goldfinch")
        }
        else if indexPath.row == 17
        {
            voice(voice: "hawk")
        }
        else if indexPath.row == 18
        {
            voice(voice: "hoopoe")
        }
        else if indexPath.row == 19
        {
            voice(voice: "kestrel")
        }
        else if indexPath.row == 20
        {
            voice(voice: "kite bird")
        }
        else if indexPath.row == 21
        {
            voice(voice: "koel")
        }
        else if indexPath.row == 22
        {
            voice(voice: "myna")
        }
        else if indexPath.row == 23
        {
            voice(voice: "nightingale")
        }
        else if indexPath.row == 24
        {
            voice(voice: "ostrich")
        }
        else if indexPath.row == 25
        {
            voice(voice: "owl")
        }
        else if indexPath.row == 26
        {
            voice(voice: "parrot")
        }
        else if indexPath.row == 27
        {
            voice(voice: "peacock")
        }
        else if indexPath.row == 28
        {
            voice(voice:"pelican")
        }
        else if indexPath.row == 29
        {
            voice(voice: "penguin")
        }
        else if indexPath.row == 30
        {
            voice(voice:"quail")
        }
        else if indexPath.row == 31
        {
            voice(voice:"robin")
        }
        else if indexPath.row == 32
        {
            voice(voice: "seagull")
        }
        else if indexPath.row == 33
        {
            voice(voice: "starling")
        }
        else if indexPath.row == 34
        {
            voice(voice: "swan")
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 195)
    }
    func voice(voice:String)
    {
        var myVoice = AVSpeechUtterance(string: voice)
        synth.speak(myVoice)
        myVoice.rate = 0.3
    }

}
