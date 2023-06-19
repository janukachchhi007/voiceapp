//
//  ViewController.swift
//  voiceapp
//
//  Created by R94 on 19/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 5
        playButton.layer.masksToBounds = true
    }

    @IBAction func playButtonAction(_ sender: Any) {
        naviget()
    }
    func naviget()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "mainPage") as! mainPage
            navigationController?.pushViewController(naviget, animated: true)
    }
}

