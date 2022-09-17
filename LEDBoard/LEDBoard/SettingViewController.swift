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
    
    var initialLabelText = ""
    var selectedTextColor: UIColor = .yellow
    var selectedBackColor: UIColor = .black
    
    weak var settingDelegate: LEDBoardSettingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialSetting()
    }
    
    private func setInitialSetting() {
        textField.text = initialLabelText
        changeTextColor(color: selectedTextColor)
        changeBackColor(color: selectedBackColor)
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == yellowButton {
            changeTextColor(color: .yellow)
        } else if sender == pinkButton {
            changeTextColor(color: .systemPink)
        } else if sender == greenButton {
            changeTextColor(color: .green)
        }
    }
    
    @IBAction func tapBackColorButton(_ sender: UIButton) {
        if sender == blackButton {
            changeBackColor(color: .black)
        } else if sender == blueButton {
            changeBackColor(color: .blue)
        } else if sender == orangeButton {
            changeBackColor(color: .orange)
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
        yellowButton.alpha = (color == .yellow ? 1 : 0.3)
        pinkButton.alpha = (color == .systemPink ? 1 : 0.3)
        greenButton.alpha = (color == .green ? 1 : 0.3)
        selectedTextColor = color
    }
    
    private func changeBackColor(color: UIColor) {
        blackButton.alpha = (color == .black ? 1 : 0.3)
        blueButton.alpha = (color == .blue ? 1 : 0.3)
        orangeButton.alpha = (color == .orange ? 1 : 0.3)
        selectedBackColor = color
    }
}
