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
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 25
        playButton.layer.masksToBounds = true
        progressBar.progress = 0.0
        
    }
    
    
    
    
    @IBAction func playButtonAction(_ sender: Any) {
        var a : Float = 0.0
        self.progressBar.progress = a
        time = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (time) in
            a += 0.01
            self.progressBar.progress = a
            if self.progressBar.progress == 1.0
            {
                self.naviget()
                self.time.invalidate()
                
            }
        })
    }
    func naviget()
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "typesPage") as! typesPage
        navigationController?.pushViewController(naviget, animated: true)
    }
}

