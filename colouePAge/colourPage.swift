//
//  colourPage.swift
//  voiceapp
//
//  Created by R94 on 23/06/23.
//

import UIKit
import AVFoundation


class colourPage: UIViewController{
    
    @IBOutlet weak var cv: UICollectionView!
    let  synth = AVSpeechSynthesizer()
    var rendomColour = UIColor()
    var cName = ["Yellow","Brown","Cyan","Red","Grey","Green","Purple","Orange","White","Blue","Black","Pink"]
    var colour  = [UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.black,UIColor.systemPink]
    override func viewDidLoad() {
        super.viewDidLoad()
        rendomColour = colour.randomElement()!
    }
}
//MARK = COLLECTIONVIEW

extension colourPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! colourCollectionView
        cell.nLabel.text = cName[indexPath.row]
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.black.cgColor
        if rendomColour == colour[indexPath.row]
        {
          
            cell.layer.backgroundColor = colour[indexPath.row].cgColor
        }
        else
        {
            
          cell.layer.backgroundColor = colour[indexPath.row].cgColor
            
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "yellow")
        }
        else if indexPath.row == 1
        {
            voice(voice: "brown")
        }else if indexPath.row == 2
        {
            voice(voice: "Cyan")
        }else if indexPath.row == 3
        {
            voice(voice: "Red")
        }else if indexPath.row == 4
        {
            voice(voice: "Grey")
        }else if indexPath.row == 5
        {
            voice(voice: "Green")
        }else if indexPath.row == 6
        {
            voice(voice: "Purple")
        }else if indexPath.row == 7
        {
            voice(voice: "Orange")
        }else if indexPath.row == 8
        {
            voice(voice: "White")
        }else if indexPath.row == 9
        {
            voice(voice: "Blue")
        }else if indexPath.row == 10
        {
            voice(voice: "Black")
        }else if indexPath.row == 11
        {
            voice(voice: "Pink")
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
//MARK = COLOUR 
extension UIColor {
    var cname : String{
        switch self{
            
        case UIColor.yellow : return "yellow"
        case UIColor.brown : return"Brown"
        case UIColor.cyan : return "Cyan"
        case UIColor.red : return "red"
        case UIColor.gray : return "Gray"
        case UIColor.green : return "Green"
        case UIColor.purple : return "Purple"
        case UIColor.orange : return "Orange"
        case UIColor.white : return "white"
        default:
            break
        }
        return ""
    }
}


