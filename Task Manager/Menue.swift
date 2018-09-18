//  Menue.swift
//  Task Manager
//  Created by Kaleb Allen on 9/17/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.

import Foundation

//Menu function 
class Menu {
    let libary = Libary()
    var shouldQuit = false
    
    func go() {
        print("""
Menu
1. add task
2. remove task
3. list current task
4. check task complete
5. check task incomplete
6. list complete tasks
7. help
8. quit
""")
        repeat {
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                input = getInput()
                
            }
            handleInput(input)
        }            while !shouldQuit
    }//calls on the functions in the Task Libary
    func handleInput(_ input: String) {
        switch input {
        case "1":
            libary.addTask()
        case "2":
            libary.removeTask()
            go()
        case "3":
            libary.listTaskNotCompleted()
        case "4":
            libary.checkTaskComplete()
            go()
        case "5":
            libary.listTaskNotCompleted()
        case "6":
            libary.listTaskCompleted()
            go()
        case "7":
            print("Pick a number to acces its function")
        case "8":
            shouldQuit = true
        default:
            print("Please choose a number")
            
        }
    }
    
}

//this function impliments the menu options
func validateInput(_ input: String) -> Bool {
    let menuOptions = Array(1...8)
    guard let number = Int(input) else { return false}
    return menuOptions.contains(number)
}

//makes sure that the users input does not have white spaces 
func getInput() -> String {
    var input: String? = nil
    
    repeat {
        let line =
            readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
        if line != "" {
            input = line
        } else {
            print("Invalid input.")
        }
    }                       while input == nil
    return input!
}
