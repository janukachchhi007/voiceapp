//
//  mainPage.swift
//  voiceapp
//
//  Created by R94 on 19/06/23.
//

import UIKit
import AVFoundation

class mainPage: UIViewController {
    
    let  synth = AVSpeechSynthesizer()
    var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var alphabetName = ["Apple","Ball","Cat","Dog","Elephant","Fish","Gen","Horse","Ice-Creme","Jug","Kite","Lion","Monkey","Neast","Orange","Parrot","Queen","Rose","Sun","Tiger","Umbrella","Van","Watch","X-Tree","Yark","Zibra"]
    var image = [UIImage(named: "a"),UIImage(named: "b"),UIImage(named: "c"),UIImage(named: "d"),UIImage(named: "e"),UIImage(named: "f"),UIImage(named: "g"),UIImage(named: "h"),UIImage(named: "i"),UIImage(named: "j"),UIImage(named: "k"),UIImage(named: "l"),UIImage(named: "m"),UIImage(named: "n"),UIImage(named: "o"),UIImage(named: "p"),UIImage(named: "q"),UIImage(named: "r"),UIImage(named: "s"),UIImage(named: "t"),UIImage(named: "u"),UIImage(named: "v"),UIImage(named: "w"),UIImage(named: "x"),UIImage(named: "y"),UIImage(named: "z")]
    
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//MARK = COLLECTIONVIEW

extension mainPage: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphabet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionView1
        cell.nameLabel.text = alphabet[indexPath.row]
        cell.img.image = image[indexPath.row]
        cell.AlphbetName.text = alphabetName[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.black.cgColor
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "A for apple")
        }
        else if indexPath.row == 1
        {
            voice(voice: "B for ball")
        }
        else if indexPath.row == 2
        {
            voice(voice: "c for cat")
        }
        else if indexPath.row == 3
        {
            voice(voice: "D for dog")
        }
        else if indexPath.row == 4
        {
            voice(voice: "E for elephant")
        }
        else if indexPath.row == 5
        {
            voice(voice: "f for fish")
        }
        else if indexPath.row == 6
        {
            voice(voice: "g for gun")
        }
        else if indexPath.row == 7
        {
            voice(voice: "h for horse")
        }
        else if indexPath.row == 8
        {
            voice(voice: "i for ice cream")
        }
        else if indexPath.row == 9
        {
            voice(voice: "j for jug")
        }
        else if indexPath.row == 10
        {
            voice(voice: "k for kite")
        }
        else if indexPath.row == 11
        {
            voice(voice: "l for lion")
        }
        else if indexPath.row == 12
        {
            voice(voice: "m for monkey")
        }
        else if indexPath.row == 13
        {
            voice(voice: "n for nest")
        }
        else if indexPath.row == 14
        {
            voice(voice: "o for orange")
        }
        else if indexPath.row == 15
        {
            voice(voice: "p for parrot")
        }
        else if indexPath.row == 16
        {
            voice(voice: "q for queen")
        }
        else if indexPath.row == 17
        {
            voice(voice: "r for rose")
        }
        else if indexPath.row == 18
        {
            voice(voice: "s for sun")
        }
        else if indexPath.row == 19
        {
            voice(voice: "t for tiger")
        }
        else if indexPath.row == 20
        {
            voice(voice: "u for umrella")
        }
        else if indexPath.row == 21
        {
            voice(voice: "v for van")
        }
        else if indexPath.row == 22
        {
            voice(voice: "w for watch")
        }
        else if indexPath.row == 23
        {
            voice(voice: "x for xmash tree")
        }
        else if indexPath.row == 24
        {
            voice(voice: "y for yak")
        }
        else if indexPath.row == 25
        {
            voice(voice: "Z for zebra")
        }
    }
    func voice(voice:String)
    {
        var myVoice = AVSpeechUtterance(string: voice)
        synth.speak(myVoice)
        myVoice.rate = 0.3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 230)
    }
}


