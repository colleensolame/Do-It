//
//  CompleteTaskViewController.swift
//  Do It
//
//  Created by Colleen Ng on 9/13/17.
//  Copyright © 2017 ZND Code. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet weak var lblTask: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            lblTask.text = "❗️\(task.name)"
        } else {
            lblTask.text = task.name
        }
        
    }
    
    @IBAction func btnComplete(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
