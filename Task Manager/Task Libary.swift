//
//  Task Libary.swift
//  Task Manager
//
//  Created by Kaleb Allen on 9/17/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
//this will handle storing our games and all interactions with that array
class Libary {
    
    // array for game projects
    private var taskArray: [Task] = [Task(title:"this is where you add the task you can add new tasks"), Task(title:"add tasks when you need")]
    
    func addTask() {
        //when we make a game we need the tittle, we also need user input, and we to add it to our game array, and a game object for the game.
        
        //tell user to enter in a game title
        print("please enter a task: ")
        
        //we need uder input for the title
        var newTaskName = readLine()
        
        while newTaskName == nil || newTaskName == "" {
            print("Invalid task please try another: ")
            newTaskName = readLine()
        }
        
        let newTask = Task(title: newTaskName!)
        taskArray.append(newTask)
        
        for task in taskArray {
            print(newTask.title)
        
        }
    }
    
    func removeTask() {
        //Removes a game from a libery
        for index in 2..<taskArray.count {
            print("\(index) \(taskArray[index].title)")
        }
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("invalid response please trty again")
            userInput = Int(readLine()!)
        }
        taskArray.remove(at: userInput!)
    }
    
    func listTask() {
        // tells what games are currently in the libary array
        for task in taskArray {
            if task.checkedIn {
                print(task.title)
            }
        }
    }
    
    func listTaskNotCompleted() {
        //adds functionality to a list of games that are not avaible
        for task in taskArray {
            if task.checkedIn == false {
                print("\(task.title) has not been completed")
                
            }
        }
    }
    
    func listTaskCompleted() {
        for index in 2..<taskArray.count {
            print("\(index). \(taskArray[index].title)")
            var userInput = Int(readLine()!)
            while userInput == nil {
                print("please enter a valid response")
                userInput = Int(readLine()!)
            }
        }
    }
    
    func checkTaskComplete() {
        for index in 2..<taskArray.count {
            print("\(index). \(taskArray[index].title)")
        }
        print("plese enter the number of the game you wish to mark complete:")
        var userInput = Int(readLine()!)
        while userInput == nil {
            print("please enter a valid response")
            userInput = Int(readLine()!)
        }
    }
}

