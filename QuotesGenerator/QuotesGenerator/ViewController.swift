//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by kelly on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    
    let quotes = [
        Quote(content: "명언1", name: "이름1"),
        Quote(content: "명언2", name: "이름2"),
        Quote(content: "명언3", name: "이름3"),
        Quote(content: "명언4", name: "이름4"),
        Quote(content: "명언5", name: "이름5"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.quoteLabel.text = quote.content
        self.nameLable.text = quote.name
    }
}

