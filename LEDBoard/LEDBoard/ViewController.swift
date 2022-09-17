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
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SettingViewController {
            viewController.settingDelegate = self
        }
    }
    
    func setLEDBoard(labelText: String, backColor: UIColor, textColor: UIColor) {
        label.text = labelText
        label.textColor = textColor
        view.backgroundColor = backColor
    }
    
}

