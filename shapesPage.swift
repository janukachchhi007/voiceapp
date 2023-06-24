//
//  shapesPage.swift
//  voiceapp
//
//  Created by R94 on 24/06/23.
//

import UIKit
import AVFoundation


class shapesPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    

    @IBOutlet weak var cv: UICollectionView!
    let  synth = AVSpeechSynthesizer()

    var image = [UIImage(named: "circle"),UIImage(named: "squre"),UIImage(named: "rectangle"),UIImage(named: "semicircle"),UIImage(named: "star"),UIImage(named: "heart"),UIImage(named: "triangle"),UIImage(named: "trape")]
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  shapesCollectionView
        cell.img.image = image[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "circle")
        }
        else if indexPath.row == 1
        {
            voice(voice: "squre")
        }
        else if indexPath.row == 2
        {
            voice(voice: "rectangle")
        }
        else if indexPath.row == 3
        {
            voice(voice: "semicircle")
        }
        else if indexPath.row == 4
        {
            voice(voice: "star")
        }
        else if indexPath.row ==
                    5
        {
            voice(voice: "heart")
        }
        else if indexPath.row == 6
        {
            voice(voice: "triangle")
        }
        else if indexPath.row == 7
        {
            voice(voice: "trapeze")
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
