//
//  ViewController.swift
//  ViewTransition
//
//  Created by Yawo Echitey on 5/2/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardBack: UIImageView!
    @IBOutlet weak var cardFront: UIImageView!
    var flipped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flipCard(_sender: UIButton){
        
        flipped = !flipped
        
        let fromView = flipped ? cardBack : cardFront
        let toView =  flipped ? cardFront : cardBack
        
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionFlipFromTop, .showHideTransitionViews])
    }
}

