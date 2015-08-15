//
//  SecondViewController.swift
//  To Do Test
//
//  Created by Taige Zhang on 14/08/2015.
//  Copyright (c) 2015 Taige Zhang. All rights reserved.
//

import UIKit

var toDoList = [String]()


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var toDo: UITextField!

    @IBAction func addToDo(sender: AnyObject) {
        
        toDoList.append(toDo.text)
        toDo.text = ""
        println(toDoList)
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoListSaved")
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
        
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true
    }
}

