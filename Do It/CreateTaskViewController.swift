//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Colleen Ng on 9/13/17.
//  Copyright © 2017 ZND Code. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var txtTaskName: UITextField!
    @IBOutlet weak var switchImportant: UISwitch!
    
    @IBAction func btnAdd(_ sender: Any) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = txtTaskName.text!
        task.important = switchImportant.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Popback
        navigationController!.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
