//
//  ViewController.swift
//  Minority Report
//
//  Created by Ananya Sehgal on 6/13/17.
//  Copyright © 2017 Ananya Sehgal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var preCogLabel: UILabel!
    @IBOutlet weak var futureLabel: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        futureLabel.center = view.center
        
    }
    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("Drag")
        
        let point = sender.location(in: view)
        print(point)
        futureLabel.center = point
    
    
    if sender.state == .ended {
    print("End")
        UIView.animate(withDuration: 0.75, animations: { 
            self.futureLabel.center = self.view.center
        }) 
        
    }
        
        
        
    }



}

