//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by kelly on 2022/09/17.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func setLEDBoard(labelText: String, backColor: UIColor, textColor: UIColor)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    private var selectedTextColor: UIColor = UIColor.yellow
    private var selectedBackColor: UIColor = UIColor.black
    
    weak var settingDelegate: LEDBoardSettingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == yellowButton {
            changeTextColor(color: UIColor.yellow)
        } else if sender == pinkButton {
            changeTextColor(color: UIColor.systemPink)
        } else if sender == greenButton {
            changeTextColor(color: UIColor.green)
        }
    }
    
    @IBAction func tapBackColorButton(_ sender: UIButton) {
        if sender == blackButton {
            changeBackColor(color: UIColor.black)
        } else if sender == blueButton {
            changeBackColor(color: UIColor.blue)
        } else if sender == orangeButton {
            changeBackColor(color: UIColor.orange)
        }
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        settingDelegate?.setLEDBoard(
            labelText: textField.text ?? "",
            backColor: selectedBackColor,
            textColor: selectedTextColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: UIColor) {
        yellowButton.alpha = (color == UIColor.yellow ? 1 : 0.3)
        pinkButton.alpha = (color == UIColor.systemPink ? 1 : 0.3)
        greenButton.alpha = (color == UIColor.green ? 1 : 0.3)
        selectedTextColor = color
    }
    
    private func changeBackColor(color: UIColor) {
        blackButton.alpha = (color == UIColor.black ? 1 : 0.3)
        blueButton.alpha = (color == UIColor.blue ? 1 : 0.3)
        orangeButton.alpha = (color == UIColor.orange ? 1 : 0.3)
        selectedBackColor = color
    }
}
