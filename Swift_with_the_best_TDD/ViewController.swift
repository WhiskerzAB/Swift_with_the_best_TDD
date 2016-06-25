//
//  ViewController.swift
//  Swift_with_the_best_TDD
//
//  Created by Gabriel Peart on 2016-06-25.
//  Copyright © 2016 Gabriel Peart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func updateLabelHandler(sender: UIButton) {
        testLabel.text = Constants.DefaultMessage
    }
    
}

