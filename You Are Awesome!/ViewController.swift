//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lindsay Braun on 1/21/19.
//  Copyright © 2019 Lindsay Braun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You Are Awesome!"{
            messageLabel.text = "You Are Great!"
        }
        else if messageLabel.text == "You Are Great!" {
            messageLabel.text = "You Are Amazing!"
        }
        else{
            messageLabel.text = "You Are Awesome!"
        }
    }
    
}

