//
//  SeguePushViewController.swift
//  ScreenTransitionPractice
//
//  Created by kelly on 2022/09/15.
//

import UIKit

class SeguePushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
