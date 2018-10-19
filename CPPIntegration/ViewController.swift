//
//  ViewController.swift
//  CPPIntegration
//
//  Created by Timothy Raveling on 10/19/18.
//  Copyright © 2018 Firemark Foundry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets and Vars -
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    
    // MARK: - Actions -
    
    @IBAction func hitSendButton(_ sender: Any) {
        self.sendToBrain()
    }
    
    // MARK: - VC Functions -
 
    func sendToBrain() {
        
        self.outputLabel.text = Brain.processString(self.inputField.text ?? "")
        self.inputField.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - UITextFieldDelegate -
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.sendToBrain()
        return true
    }
}

