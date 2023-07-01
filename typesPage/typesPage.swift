//
//  typesPage.swift
//  voiceapp
//
//  Created by R94 on 22/06/23.
//

import UIKit

class typesPage: UIViewController{
    
    var image = [UIImage(named: "ABC"),UIImage(named: "123"),UIImage(named: "colour"),UIImage(named: "shapes"),UIImage(named: "animal"),UIImage(named: "birds")]
    var name = ["Charater","Numeric","Colour Pallet","Shapes","Animal","Birds"]
    
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK = TYPES COLLECTION VIEW

extension typesPage: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!  TypesCollectionView
        cell.img.image = image[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.black.cgColor
        
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
        else if indexPath.row == 3
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "shapesPage") as! shapesPage
            navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 4
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "animalPage") as! animalPage
            navigationController?.pushViewController(naviget, animated: true)
        }
        else if indexPath.row == 5
        {
            let naviget = storyboard?.instantiateViewController(withIdentifier: "birdsPage") as! birdsPage
            navigationController?.pushViewController(naviget, animated: true)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 161, height: 193)
    }
}
