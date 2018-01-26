//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shah, Raj Kumar-CW on 1/26/18.
//  Copyright © 2018 Shah, Raj Kumar-CW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var predictionImageView: UIImageView!
    
    var predictRandomIndex : Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        upadteBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButtonPressed(_ sender: UIButton) {
        
       upadteBallImage()
        
    }
    
    func upadteBallImage() {
        predictRandomIndex = Int(arc4random_uniform(5))
        
        predictionImageView.image = UIImage(named: ballArray[predictRandomIndex])

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        upadteBallImage()
    }
}

