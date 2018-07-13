//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Vigneshwar Devendran on 09/03/18.
//  Copyright © 2018 Vigneshwar Devendran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballShows: UIImageView!
    var randomBallAnswer: Int = 0
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnswers()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askPressed(_ sender: Any) {
        showAnswers()
    }
    func showAnswers(){
        randomBallAnswer = Int(arc4random_uniform(5))
        ballShows.image = UIImage(named: ballArray[randomBallAnswer])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        showAnswers()
    }
    
}

