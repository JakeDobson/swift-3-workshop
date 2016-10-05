//
//  NewToDoViewController.swift
//  CFS3ToDoList
//
//  Created by Jacob Dobson on 10/5/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewToDoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //assign this class to be textField's delegate
        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func closeButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let userText = textField.text {
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        dismiss(animated: true, completion: nil)
        return true
        // The above code checks to see if we have text from the user input into the textfield. If we do, then it stores that value in userText. We then use the initializer we made for our Todo class to create a new Todo instance. Then, we use the TodoList class to add it to our existing todos.
    }
    
}
