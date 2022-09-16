//
//  SeguePresentViewController.swift
//  ScreenTransitionPractice
//
//  Created by kelly on 2022/09/15.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
