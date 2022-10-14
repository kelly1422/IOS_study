//
//  ViewController.swift
//  ToDoList
//
//  Created by kelly on 2022/10/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var tasks = [Task]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapEditButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "할 일 등록", message: nil, preferredStyle: .alert)
        let addButton = UIAlertAction(title: "등록", style: .default) { [weak self] _ in
            guard let title = alert.textFields?[0].text else { return }
            let newTask = Task(title: title, done: false)
            self?.tasks.append(newTask)
        }
        let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(cancelButton)
        alert.addAction(addButton)
        alert.addTextField { textField in
            textField.placeholder = "할 일을 입력해주세요."
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func tapAddButoon(_ sender: UIBarButtonItem) {
    
    }
}

