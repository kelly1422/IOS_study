//
//  RoundButton.swift
//  Calculator
//
//  Created by kelly on 2022/09/18.
//

import UIKit

//@IBDesignable //여기서 적용한 속성을 실시간으로 스토리보드에 랜더링하도록 해주는 주석
class RoundButton: UIButton {
    @IBInspectable // 스토리보드 inspector 화면에서 이 프로퍼티를 보고 설정할 수 있음
    var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
    }
}


