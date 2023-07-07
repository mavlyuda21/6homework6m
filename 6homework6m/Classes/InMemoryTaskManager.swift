//
//  InMemoryTaskManager.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
class InMemoryTaskManager: TaskManager {
    private var tasks: [String] = []
    
    func addTask(_ task: String) {
        tasks.append(task)
    }
    
    func completeTask(at index: Int) {
        if index >= 0 && index < tasks.count {
            tasks.remove(at: index)
        }
    }
    
    func printTasks() {
        print("Tasks:")
        for (index, task) in tasks.enumerated() {
            print("\(index + 1). \(task)")
        }
    }
}
