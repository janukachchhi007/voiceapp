//
//  mainPage.swift
//  voiceapp
//
//  Created by R94 on 19/06/23.
//

import UIKit
import AVFoundation

class mainPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
 let  synth = AVSpeechSynthesizer()
    var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","S","T","U","V","W","X","Y","Z"]
    var image = [UIImage(named: "a"),UIImage(named: "b"),UIImage(named: "c"),UIImage(named: "d"),UIImage(named: "e"),UIImage(named: "f"),UIImage(named: "g"),UIImage(named: "h"),UIImage(named: "i"),UIImage(named: "j"),UIImage(named: "k"),UIImage(named: "l"),UIImage(named: "m"),UIImage(named: "n"),UIImage(named: "o"),UIImage(named: "p"),UIImage(named: "q"),UIImage(named: "s"),UIImage(named: "t"),UIImage(named: "u"),UIImage(named: "v"),UIImage(named: "w"),UIImage(named: "x"),UIImage(named: "y"),UIImage(named: "z")]
    
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphabet.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionView1
        cell.nameLabel.text = alphabet[indexPath.row]
        cell.img.image = image[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            var myVoice = AVSpeechUtterance(string: "A for Apple")
            synth.speak(myVoice)
            myVoice.rate = 0.3
        }
        else if indexPath.row == 1
        {
            var myVoice = AVSpeechUtterance(string: "B for ball")
            synth.speak(myVoice)
            myVoice.rate = 0.3
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 230, height: 270)
    }
    
}
