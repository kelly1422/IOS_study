//
//  ViewController.swift
//  Calculator
//
//  Created by kelly on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    private var operand1: Int = 0
    private var operand2: Int = 0
    private var isAfterClickedOperator = false
    
    @IBOutlet weak var ACButton: RoundButton!
    @IBOutlet weak var multipleMinusButton: RoundButton!
    @IBOutlet weak var remainderButton: RoundButton!
    @IBOutlet weak var divisionButton: RoundButton!
    @IBOutlet weak var multipleButton: RoundButton!
    @IBOutlet weak var subtractButton: RoundButton!
    @IBOutlet weak var plusButton: RoundButton!
    @IBOutlet weak var equalButton: RoundButton!
    
    @IBOutlet weak var zeroButton: RoundButton!
    @IBOutlet weak var oneButton: RoundButton!
    @IBOutlet weak var twoButton: RoundButton!
    @IBOutlet weak var threeButton: RoundButton!
    @IBOutlet weak var fourButton: RoundButton!
    @IBOutlet weak var fiveButton: RoundButton!
    @IBOutlet weak var sixButton: RoundButton!
    @IBOutlet weak var sevenButton: RoundButton!
    @IBOutlet weak var eightButton: RoundButton!
    @IBOutlet weak var nineButton: RoundButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    private func configUI() {
        zeroButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: zeroButton.frame.width / 5, bottom: 0, right: 0);
    }
    
    @IBAction func tapNumberButton(_ sender: UIButton) {
//        let num = Int(sender.title(for: .normal) ?? "0") ?? 0
        if isAfterClickedOperator {
            // 현재 라벨이 있는 값을 operand1에 저장하고, 방금 입력 받은 숫자로 label 업데이트
        } else {
            // 현재라벨에 계속해서 입력받기
        }
        isAfterClickedOperator = false
    }
    
    @IBAction func tapSimpleOperatorButton(_ sender: UIButton) {
        // 현재 라벨에 적혀 있는 숫자에 계산 진행하고, 업데이트
    }
    
    @IBAction func tapOperatorButton(_ sender: UIButton) {
        if isAfterClickedOperator {
            // 선택된 operator 종류만 바꿔주기
        } else {
            //
        }
        isAfterClickedOperator = true
    }
    
    @IBAction func tapACButton(_ sender: UIButton) {
    }
    
    @IBAction func tapEqualButton(_ sender: UIButton) {
        // isClickedOperator.toggle()
        // 계산 결과값을 라벨에 표시, operand1값에 저장
    }
}

