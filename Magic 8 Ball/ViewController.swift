//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Amerigo Mancino on 09/12/2018.
//  Copyright © 2018 Amerigo Mancino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        // The ask button gets pressed
        newBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // The phone was shaked and the shaking is now ended
        newBallImage()
    }
    
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

