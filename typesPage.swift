//
//  typesPage.swift
//  voiceapp
//
//  Created by R94 on 22/06/23.
//

import UIKit

class typesPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var image = [UIImage(named: "ABC"),UIImage(named: "123"),UIImage(named: "colour"),UIImage(named: "shapes"),UIImage(named: "animal"),UIImage(named: "birds")]
    var name = ["Charater","Numeric","Colour Pallet","Shapes","Animal","Birds"]
    var rendomColour = UIColor()
    var colour  = [UIColor.yellow,UIColor.brown,UIColor.cyan,UIColor.red,UIColor.gray,UIColor.green,UIColor.purple,UIColor.orange,UIColor.white]
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        rendomColour = colour.randomElement()!
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  TypesCollectionView
        cell.img.image = image[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        
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
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if indexPath.row == 0
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "mainPage") as! mainPage
            navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 1
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "NumericPage") as! NumericPage
            navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 2
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "colourPage") as! colourPage
            navigationController?.pushViewController(naviget, animated: true)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 158, height: 184)
    }
    
}
extension UIColor {
    var nameColour : String{
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

