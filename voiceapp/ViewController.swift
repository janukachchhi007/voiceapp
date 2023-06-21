//
//  ViewController.swift
//  voiceapp
//
//  Created by R94 on 19/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 25
        playButton.layer.masksToBounds = true
        progressBar.progress = 0.0
        
    }

    @IBAction func playButtonAction(_ sender: Any) {
        
        var time = Timer()
        var a : Float = 0.0
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { time in
            a+=0.01
            self.progressBar.progress = a
            if self.progressBar.progress == 1.0
            {
                self.progressBar.progress = 0.0
            }
        })
        naviget()3.description
    }
    func naviget()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "mainPage") as! mainPage
            navigationController?.pushViewController(naviget, animated: true)
    }
}

