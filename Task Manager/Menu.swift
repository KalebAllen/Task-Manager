//
//  Menu.swift
//  Task Manager
//
//  Created by Kaleb Allen on 9/12/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation

class Menu {
    let manager = libary()
    var shouldQuit = false
    
    func go() {
        
        print("""
        
        Tasks
        1.Add task
        2.Remove task
        3.List task not complete
        4.List tasks complete
        5.check completed
        6.check Incomplete
        7.Help
        8.Quit
        """)
        
        repeat {
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                input = getInput()
                
            }
            handleInput(input)
        }            while !shouldQuit
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            manager.addTask()
        case "2":
            manager.removeTask()
        case "3":
            manager.listTaskNotComplete()
        case "4":
            manager.listTaskCompleted()
            go()
        case "5":
            manager.checkCompleted()
            go()
        case "6":
            manager.checkIncomplete()
            go()
        case "7":
            print("choose a number to access its function")
            go()
        case "8":
            shouldQuit = true
        default:
            print("Please choose a number")
        }
    }
    
    func validateInput(_ input: String) -> Bool {
        let menuOptions = Array(1...8)
        guard let number = Int(input) else { return false }
        return menuOptions.contains(number)
    }
    
    func getInput() -> String {
        var input: String? = nil
        
        repeat {
            let line =
                readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            if line != "" {
                input = line
            } else {
                print("Invalid Input.")
            }
        }            while input == nil
        return input!
    }
}










