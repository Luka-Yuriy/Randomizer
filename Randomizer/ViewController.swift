//
//  ViewController.swift
//  Randomizer
//
//  Created by Yuri Luka on 04/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLable: UILabel!
    @IBOutlet var getRundomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRundomNumberButton.layer.cornerRadius = 12
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minimumValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maxNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLable.text = Int.random(in: minNumber...maxNumber).formatted()
    }
    
}

