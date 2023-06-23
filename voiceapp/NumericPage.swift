//
//  NumericPage.swift
//  voiceapp
//
//  Created by R94 on 23/06/23.
//

import UIKit
import AVFoundation


class NumericPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    let  synth = AVSpeechSynthesizer()
    var rendomColour = UIColor()
    var colour  = [UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue,UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white,UIColor.blue]
    var number = ["1","2","3","4","5","6","7","8","9","10",
                  "11","12","13","14","15","16","17","18","19","20",
                  "21","22","23","24","25","26","27","28","29","30",
                  "31","32","33","34","35","36","37","38","39","40",
                  "41","42","43","44","45","46","47","48","49","50",
                  "51","52","53","54","55","56","57","58","59","60",
                  "61","62","63","64","65","66","67","68","69","70",
                  "71","72","73","74","75","76","77","78","79","80",
                  "81","82","83","84","85","86","87","88","89","90",
                  "91","92","93","94","95","96","97","98","99","100",]
    var name = ["One","Two","Three","Foue","Five","six","seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","sixtenn","seventeen","Eighteen","Nineteen","twenty"," twenty One"," twenty Two","twenty Three","twenty Foue"," twenty Five","twenty six","twenty seven","twenty Eight","twenty Nine","Thirty","Thirty One","Thirty Two","Thirty Three","Thirty Foue","Thirty Five","Thirty six","Thirty seven","Thirty Eight","Thirty Nine","Forty","Forty One","Forty Two","Forty Three","Forty Foue","Forty Five","Forty six","Forty seven","Forty Eight","Forty Nine","fifty","fifty One","fifty Two","fifty Three","fifty Foue","fifty Five","fifty six","fifty seven","fifty Eight","fifty Nine","Sixty","Sixty One","Sixty Two","Sixty Three","Sixty Foue","Sixty Five","Sixty six","Sixty seven","Sixty Eight","Sixty Nine","Seventy","Seventy One","Seventy Two","Seventy Three","Seventy Foue","Seventy Five","Seventy six","Seventy seven","Seventy Eight","Seventy Nine","Eighty","Eighty One","Eighty Two","Eighty Three","Eighty Foue","Eighty Five","Eighty six","Eighty seven","Eighty Eight","Eighty Nine","Ninety","Ninety One","Ninety Two","Ninety Three","Ninety Foue","Ninety Five","Ninety six","Ninety seven","Ninety Eight","Ninety Nine","hundred"]
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rendomColour = colour.randomElement()!
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return number.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0
        {
            voice(voice: "One")
        }
        else if indexPath.row == 1
        {
            voice(voice: "Two")
        }
        else if indexPath.row == 2
        {
            voice(voice: "Three")
        }
        else if indexPath.row == 3
        {
            voice(voice: "Four")
        }
        else if indexPath.row == 4
        {
            voice(voice: "Five")
        }
        else if indexPath.row == 5
        {
            voice(voice: "six")
        }
        else if indexPath.row == 6
        {
            voice(voice: "seven")
        }
        else if indexPath.row == 7
        {
            voice(voice: "eight")
        }
        else if indexPath.row == 8
        {
            voice(voice: "nine")
        }
        else if indexPath.row == 9
        {
            voice(voice: "ten")
        }
        else if indexPath.row == 10
        {
            voice(voice: "Eleven")
        }else if indexPath.row == 11
        {
            voice(voice: "Twelve")
        }
        else if indexPath.row == 12
        {
            voice(voice: "Thirteen")
        }
        else if indexPath.row == 13
        {
            voice(voice: "Fourteen")
        }
        else if indexPath.row == 14
        {
            voice(voice: "Fifteen")
        }
        else if indexPath.row == 15
        {
            voice(voice: "sixtenn")
        }
        else if indexPath.row == 16
        {
            voice(voice: "seventeen")
        }
        else if indexPath.row == 17
        {
            voice(voice: "Eighteen")
        }
        else if indexPath.row == 18
        {
            voice(voice: "Nineteen")
        }
        else if indexPath.row == 19
        {
            voice(voice: "twenty")
        }
        else if indexPath.row == 20
        {
            voice(voice: "twenty One")
        }
        else if indexPath.row == 21
        {
            voice(voice: " twenty Two")
        }
        else if indexPath.row == 22
        {
            voice(voice: "twenty Three")
        }
        else if indexPath.row == 23
        {
            voice(voice: "twenty Four")
        }
        else if indexPath.row == 24
        {
            voice(voice: "twenty Five")
        }
        else if indexPath.row == 25
        {
            voice(voice: "twenty six")
        }
        else if indexPath.row == 26
        {
            voice(voice: "twenty seven")
        }
        else if indexPath.row == 27
        {
            voice(voice: "twenty Eight")
        }
        else if indexPath.row == 28
        {
           voice(voice:  "twenty Nine")
        }
        else if indexPath.row == 29
        {
            voice(voice: "Thirty")
        }
        else if indexPath.row == 30
        {
            voice(voice: "Thirty One")
        }
        else if indexPath.row == 31
        {
            voice(voice: "Thirty Two")
        }
        else if indexPath.row == 32
        {
            voice(voice: "Thirty Three")
        }
        else if indexPath.row == 33
        {
            voice(voice: "Thirty Four")
        }
        else if indexPath.row == 34
        {
            voice(voice: "Thirty Five")
        }
        else if indexPath.row == 35
        {
            voice(voice: "Thirty six")
        }
        else if indexPath.row == 36
        {
            voice(voice: "Thirty seven")
        }
        else if indexPath.row == 37
        {
            voice(voice: "Thirty Eight")
        }
        else if indexPath.row == 38
        {
            voice(voice: "Thirty Nine")
        }
        else if indexPath.row == 39
        {
            voice(voice: "Forty")
        }
        else if indexPath.row == 40
        {
            voice(voice: "Forty One")
        }
        else if indexPath.row == 41
        {
            voice(voice: "Forty Two")
        }
        else if indexPath.row == 42
        {
            voice(voice: "Forty Three")
        }
        else if indexPath.row == 43
        {
            voice(voice: "Forty Foue")
        }
        else if indexPath.row == 44
        {
            voice(voice: "Forty Five")
        }
        else if indexPath.row == 45
        {
            voice(voice: "Forty six")
        }
        else if indexPath.row == 46
        {
            voice(voice: "Forty seven")
        }
        else if indexPath.row == 47
        {
            voice(voice: "Forty Eight")
        }
        else if indexPath.row == 48
        {
            voice(voice: "Forty Nine")
        }
        else if indexPath.row == 49
        {
            voice(voice: "fifty")
        }
        else if indexPath.row == 50
        {
            voice(voice: "fifty One" )
        }
        else if indexPath.row == 51
        {
            voice(voice: "fifty Two")
        }
        else if indexPath.row == 52
        {
            voice(voice: "fifty Three")
        }
        else if indexPath.row == 53
        {
            voice(voice: "fifty Foue")
        }
        else if indexPath.row == 54
        {
            voice(voice: "fifty Five")
        }
        else if indexPath.row == 55
        {
            voice(voice: "fifty six")
        }
        else if indexPath.row == 56
        {
            voice(voice: "fifty seven")
        }
        else if indexPath.row == 57
        {
            voice(voice: "fifty Eight")
        }
        else if indexPath.row == 58
        {
            voice(voice: "fifty Nine")
        }
        else if indexPath.row == 59
        {
            voice(voice: "Sixty")
        }
        else if indexPath.row == 60
        {
            voice(voice: "Sixty One" )
        }
        else if indexPath.row == 61
        {
            voice(voice: "Sixty Two")
        }
        else if indexPath.row == 62
        {
            voice(voice: "Sixty Three")
        }
        else if indexPath.row == 63
        {
            voice(voice: "Sixty Foue")
        }
        else if indexPath.row == 64
        {
            voice(voice: "Sixty Five")
        }
        else if indexPath.row == 65
        {
            voice(voice: "Sixty six")
        }
        else if indexPath.row == 66
        {
            voice(voice: "Sixty seven")
        }
        else if indexPath.row == 67
        {
            voice(voice: "Sixty Eight")
        }
        else if indexPath.row == 68
        {
            voice(voice: "Sixty Nine")
        }
        else if indexPath.row == 69
        {
            voice(voice: "Seventy")
        }
        else if indexPath.row == 70
        {
            voice(voice: "Seventy One")
        }
        else if indexPath.row == 71
        {
            voice(voice: "Seventy Two")
        }
        else if indexPath.row == 72
        {
            voice(voice: "Seventy Three")
        }
        else if indexPath.row == 73
        {
            voice(voice: "Seventy Foue")
        }
        else if indexPath.row == 74
        {
            voice(voice: "Seventy Five")
        }
        else if indexPath.row == 75
        {
            voice(voice: "Seventy six")
        }
        else if indexPath.row == 76
        {
            voice(voice: "Seventy seven")
        }
        else if indexPath.row == 77
        {
            voice(voice: "Seventy Eight")
        }
        else if indexPath.row == 78
        {
            voice(voice: "Seventy Nine")
        }
        else if indexPath.row == 79
        {
            voice(voice: "Eighty")
        }
        else if indexPath.row == 80
        {
            voice(voice: "Eighty One")
        }
        else if indexPath.row == 81
        {
            voice(voice: "Eighty Two")
        }
        else if indexPath.row == 82
        {
            voice(voice: "Eighty Three")
        }
        else if indexPath.row == 83
        {
            voice(voice: "Eighty Foue")
        }
        else if indexPath.row == 84
        {
            voice(voice: "Eighty Five")
        }
        else if indexPath.row == 85
        {
            voice(voice: "Eighty six")
        }
        else if indexPath.row == 86
        {
            voice(voice: "Eighty seven")
        }
        else if indexPath.row == 87
        {
            voice(voice: "Eighty Eight")
        }
        else if indexPath.row == 88
        {
            voice(voice: "Eighty Nine")
        }
        else if indexPath.row == 89
        {
            voice(voice: "Ninety")
        }
        else if indexPath.row == 90
        {
            voice(voice: "Ninety One")
        }
                  else if indexPath.row == 91
                  {
                      voice(voice: "Ninety")
                  }
                  else if indexPath.row == 92
                  {
                      voice(voice: "Ninety one")
                  }
                  else if indexPath.row == 93
                  {
                      voice(voice: "Ninety two")
                  }
                  else if indexPath.row == 94
                  {
                      voice(voice: "Ninety three")
                  }
                  else if indexPath.row == 95
                  {
                      voice(voice: "Ninety four")
                  }
                  else if indexPath.row == 96
                  {
                      voice(voice: "Ninety five")
                  }
                  else if indexPath.row == 97
                  {
                      voice(voice: "Ninety six")
                  }
                  else if indexPath.row == 98
                  {
                      voice(voice: "Ninety seven")
                  }
                  else if indexPath.row == 99
                  {
                      voice(voice: "Ninety eight")
                  }
                  else if indexPath.row == 100
                  {
                      voice(voice: "Ninety nine")
                  }
                  else if indexPath.row == 101
                  {
                      voice(voice: "handred")
                  }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
        cv.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! numericCollectionView
        cell.numberLabel.text = number[indexPath.row]
        cell.numberNameLAbel.text = name[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        
        if rendomColour == colour[indexPath.row]
        {
            cell.numberLabel.textColor = UIColor(named: "colour[indexPath.row]")
//            cell.layer.backgroundColor = colour[indexPath.row].cgColor
        }
        else
        {
            
          cell.layer.backgroundColor = colour[indexPath.row].cgColor
            
        }
        return cell
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
extension UIColor {
    var lbcolour : String{
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
