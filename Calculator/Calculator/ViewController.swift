//
//  ViewController.swift
//  Calculator
//
//  Created by kelly on 2022/09/18.
//

import UIKit

enum Operator {
    case plus
    case subtract
    case divide
    case multiple
    
    func calculate(operand1: Float, operand2: Float) -> Float {
        switch self {
        case .plus:
            print(operand1 + operand2)
            return (operand1 + operand2)
        case .subtract:
            return (operand1 - operand2)
        case .divide:
            return (operand1 / operand2)
        case .multiple:
            return (operand1 * operand2)
        }
    }
}

enum InputTurn {
    case operand1
    case operand2
}

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    private var operand1: Float = 0
    private var operand2: Float = 0
    private var hasError = false
    private var isAfterClickedOperator = false
    private var isAfterOperating = true
    private var ACCount = 0
    private var currentInputTurn: InputTurn = .operand1
    private var selectedOperator = Operator.plus
    
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
        let num = sender.title(for: .normal) ?? "0"
        if isAfterOperating {
            resultLabel.text = ""
            isAfterOperating = false
        }
        if isAfterClickedOperator {
            // 현재 라벨이 있는 값을 operand1에 저장하고, 방금 입력 받은 숫자로 label 업데이트
            operand1 = Float(resultLabel.text!) ?? 0
            resultLabel.text = num
        } else {
            if resultLabel.text == "0" {
                resultLabel.text = num
                // 현재 라벨에 나와있는 수가 0이면 방금 받은 숫자로 라벨를 업데이트
            } else {
                resultLabel.text = (resultLabel.text ?? "0") + num
                // 현재라벨에 계속해서 입력받기
            }
        }
        isAfterClickedOperator = false
//        isAfterOperating = false
    }
    
    @IBAction func tapSimpleOperatorButton(_ sender: UIButton) {
        // 현재 라벨에 적혀 있는 숫자에 계산 진행하고, 업데이트
        if let text = resultLabel.text {
            if text != "오류" {
                var num: Float = 0.0
                if sender == remainderButton {
                    num = (Float(text) ?? 0) / 100
                } else {
                    num = (Float(text) ?? 0) * -1
                }
                setLabelValue(num: num)
            }
        }
    }
    
    @IBAction func tapOperatorButton(_ sender: UIButton) {
        if sender == plusButton {
            selectedOperator = Operator.plus
        } else if sender == subtractButton {
            selectedOperator = Operator.subtract
        } else if sender == multipleButton {
            selectedOperator = Operator.multiple
        } else {
            selectedOperator = Operator.divide
        }
        if !isAfterClickedOperator {
            ACCount = 0
            if !isAfterOperating {
                tapEqualButton(equalButton)
            }
            isAfterOperating = false
            operand1 = Float(resultLabel.text!) ?? 0
        }
        isAfterClickedOperator = true
    }
    
    @IBAction func tapACButton(_ sender: UIButton) {
        // 라벨 0으로
        isAfterClickedOperator = false
        resultLabel.text = "0"
        if ACCount == 0 {
        } else {
            selectedOperator = Operator.plus
            operand2 = 0
            isAfterOperating = true
            print(operand1, operand2)
        }
        ACCount += 1
    }
    
    @IBAction func tapPointButton(_ sender: UIButton) {
        if isAfterClickedOperator {
            resultLabel.text = "0."
        } else {
            if let numStr = resultLabel.text {
                if operand1 == 0 {
                    resultLabel.text = "0."
                } else {
                    let lastIndex = numStr.index(before: numStr.endIndex)
                    if numStr[lastIndex] != "." {
                        resultLabel.text = numStr + "."
                    }
                }
            }
        }
    }
    
    @IBAction func tapEqualButton(_ sender: UIButton) {
        isAfterClickedOperator = false
        if isAfterOperating {
            operand1 = Float(resultLabel.text!) ?? 0
        }
        if selectedOperator == Operator.divide && operand2 == 0 {
            resultLabel.text = "오류"
        } else {
            operand2 = Float(resultLabel.text!) ?? 0
            let result = selectedOperator.calculate(operand1: operand1, operand2: operand2)
            setLabelValue(num: result)
        }
        operand1 = 0
        isAfterOperating = true
    }
    
    private func setLabelValue(num: Float) {
        var numStr = String(num)
        let len = numStr.count
        if len > 1 {
            if Array(numStr)[len - 1] == "0" &&  Array(numStr)[len - 2] == "." {
                numStr.removeLast(2)
            }
        }
        resultLabel.text = numStr
    }
}

