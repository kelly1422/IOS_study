//
//  ViewController.swift
//  ScreenTransitionPractice
//
//  Created by kelly on 2022/09/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else {return }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination 
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else {return}
        viewController.modalPresentationStyle = .fullScreen

        self.present(viewController, animated: true, completion: nil)
        
    }
}

