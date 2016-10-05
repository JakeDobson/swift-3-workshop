//
//  ViewController.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/19/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        
        for number in 1...5 {
            let toDo = ToDo(text: "ToDo Number \(number)")
            ToDoList.shared.add(toDo: toDo)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDoList.shared.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let toDo = ToDoList.shared.getToDoAt(index: indexPath.row)
        cell.textLabel?.text = toDo.text
        
        return cell
    }
}

