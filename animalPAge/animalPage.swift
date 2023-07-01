//
//  animalPage.swift
//  voiceapp
//
//  Created by R94 on 24/06/23.
//

import UIKit
import AVFoundation


class animalPage: UIViewController{
    
    @IBOutlet weak var cv: UICollectionView!
    let  synth = AVSpeechSynthesizer()
    var animal = [UIImage(named: "giraffe"),UIImage(named: "fox"),UIImage(named: "tiger"),UIImage(named: "chimpanzee"),UIImage(named: "chipmunk"),UIImage(named: "camel"),UIImage(named: "lion"),UIImage(named: "deer"),UIImage(named: "monkey"),UIImage(named: "elephant"),UIImage(named: "rat"),UIImage(named: "horse"),UIImage(named: "kangaroo"),UIImage(named: "leopard"),UIImage(named: "hippopotamus"),UIImage(named: "sheep"),UIImage(named: "panda"),UIImage(named: "rabbit"),UIImage(named: "zebra"),UIImage(named: "wolf")]
    var animalName = ["Giraffe","Fox","Tiger","Chimpanzee","Chipmunk","Camel","Lion","Deer","Monkey","Elephant","Rat","Horse","Kangaroo","Leopard","Hippopotamus","Sheep","Panda","Rabbit","Zebra","Wolf"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//MARK = COLLECTIONVIEW

extension animalPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  animalCollectionView
        cell.img.image = animal[indexPath.row]
        cell.nLabel.text = animalName[indexPath.row]
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "Giraffe")
        }
        else if indexPath.row == 1
        {
            voice(voice: "fox")
        }
        else if indexPath.row == 2
        {
            voice(voice: "Tiger")
        }
        else if indexPath.row == 3
        {
            voice(voice: " Chimpanzee")
        }
        else if indexPath.row == 4
        {
            voice(voice: "Chipmunk")
        }
        else if indexPath.row == 5
        {
            voice(voice: "Camel")
        }
        else if indexPath.row == 6
        {
            voice(voice: "Lion")
        }
        else if indexPath.row == 7
        {
            voice(voice: "Deer")
        }
        else if indexPath.row == 8
        {
            voice(voice: "Monkey")
        }
        else if indexPath.row == 9
        {
            voice(voice: "Elephant")
        }
        else if indexPath.row == 10
        {
            voice(voice: "Rat")
        }
        else if indexPath.row == 11
        {
            voice(voice: "Horse")
        }
        else if indexPath.row == 12
        {
            voice(voice: "Kangaroo")
        }
        else if indexPath.row == 13
        {
            voice(voice: "Leopard" )
        }
        else if indexPath.row == 14
        {
            voice(voice: "Hippopotamus")
        }
        else if indexPath.row == 15
        {
            voice(voice: "Sheep")
        }
        else if indexPath.row == 16
        {
            voice(voice: "Panda")
        }
        else if indexPath.row == 17
        {
            voice(voice: "Rabbit")
        }
        else if indexPath.row == 18
        {
            voice(voice: "Zebra")
        }
        else if indexPath.row == 19
        {
            voice(voice: "wolf")
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
