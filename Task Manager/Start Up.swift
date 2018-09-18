//
//  Start Up.swift
//  Task Manager
//
//  Created by Kaleb Allen on 9/17/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
class Task {
    //store the title of the task
    var title: String
    
    var checkedIn = true
    
    init(title: String) {
        self.title = title
    }
}
