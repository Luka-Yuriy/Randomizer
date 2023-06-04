//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Yuri Luka on 04/06/2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
