//
//  ViewController.swift
//  LEDBoard
//
//  Created by kelly on 2022/09/17.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.textColor = .yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.settingDelegate = self
            settingViewController.initialLabelText = label.text ?? ""
            settingViewController.selectedTextColor = label.textColor
            settingViewController.selectedBackColor = view.backgroundColor ?? .black
        }
    }
    
    func setLEDBoard(labelText: String, backColor: UIColor, textColor: UIColor) {
        label.text = labelText
        label.textColor = textColor
        view.backgroundColor = backColor
    }
    
}

