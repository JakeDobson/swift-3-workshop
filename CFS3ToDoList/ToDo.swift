//
//  ToDo.swift
//  CFS3ToDoList
//
//  Created by Jacob Dobson on 10/5/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class ToDo: Identity {
    var text: String
    var identifier: String
    
    init(text: String) {
        self.text = text
        self.identifier = UUID().uuidString  //unique ID for identifier string
    }
}
