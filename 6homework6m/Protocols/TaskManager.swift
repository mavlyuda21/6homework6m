//
//  TaskManager.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
protocol TaskManager{
    func addTask(_ task: String)
    func completeTask(at index: Int)
    func printTasks()
}
