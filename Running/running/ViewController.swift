//
//  ViewController.swift
//  Running
//
//  Created by airlaptop on 17.08.2018.
//  Copyright © 2018 airlaptop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightConstrain: NSLayoutConstraint!
    
    @IBOutlet weak var thebuttonpause: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipAction(arg1:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
        
    }

@objc func swipAction (arg1: UISwipeGestureRecognizer) {
    
        if self.rightConstrain.constant == CGFloat(0) {
            self.rightConstrain.constant = 370
        } else {
            self.rightConstrain.constant = 0
        }
        UIView.animate(withDuration: 3) {
            self.view.layoutIfNeeded()
    }

}

}
