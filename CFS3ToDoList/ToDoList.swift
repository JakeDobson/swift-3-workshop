//
//  ToDoList.swift
//  CFS3ToDoList
//
//  Created by Jacob Dobson on 10/5/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class ToDoList {
    static let shared = ToDoList()
    
    var allToDos = [ToDo]()
    
    private init() {
        //making sure only 1 instance of this class gets created
    }
    
    func add(toDo: ToDo) {
        self.allToDos.append(toDo)
    }
    
    func remove(toDo: ToDo) {
        self.allToDos = self.allToDos.filter { (item) -> Bool in
            return item.identifier != toDo.identifier
        }
    }
    
    func removeAll(toDo: ToDo) {
        self.allToDos.removeAll()
    }
    
    func getToDoAt(index: Int) -> ToDo {
        return self.allToDos[index]
    }
    
    func count() -> Int {
        return self.allToDos.count
    }
}
