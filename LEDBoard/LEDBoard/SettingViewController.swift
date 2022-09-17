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
    
    weak var settingDelegate: LEDBoardSettingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        changeTextColor(color: sender.currentTitle ?? "")
    }
    
    @IBAction func tapBackColorButton(_ sender: UIButton) {
        changeBackColor(color: sender.currentTitle ?? "")
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
//        let selectedBackColor =
//        settingDelegate?.setLEDBoard(labelText: <#T##String#>, backColor: <#T##UIColor#>, textColor: <#T##UIColor#>)
//        self.navigationController?.popViewController(animated: true)
    }
    
    private func changeTextColor(color: String) {
        yellowButton.alpha = (color == "노란색" ? 1 : 0.3)
        pinkButton.alpha = (color == "분홍색" ? 1 : 0.3)
        greenButton.alpha = (color == "초록색" ? 1 : 0.3)
    }
    
    private func changeBackColor(color: String) {
        blackButton.alpha = (color == "검정색" ? 1 : 0.3)
        blueButton.alpha = (color == "파란색" ? 1 : 0.3)
        orangeButton.alpha = (color == "주황색" ? 1 : 0.3)
    }
}
