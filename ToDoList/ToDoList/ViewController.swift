//
//  ViewController.swift
//  ToDoList
//
//  Created by kelly on 2022/10/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapEditButton(_ sender: UIBarButtonItem) {
        var alert = UIAlertController(title: "할 일 등록", message: nil, preferredStyle: .alert)
        var addButton = UIAlertAction(title: "등록", style: .default) { _ in
            
        }
        var cancelButton = UIAlertAction(title: "취소", style: .cancel) { _ in
            
        }
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        alert.addTextField { UITextField in
            UITextField.placeholder = "할 일을 입력해주세요."
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tapAddButoon(_ sender: UIBarButtonItem) {
    
    }
}

