//
//  ConsoleInputHandler.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
class ConsoleInputHandler: InputHandler {
    let logger: Logger
    let taskManager: TaskManager
    
    init(logger: Logger, taskManager: TaskManager) {
        self.logger = logger
        self.taskManager = taskManager
    }
    
    func handleInput() {
        logger.log(message: "Обработка пользовательского ввода...")
        
        var running = true
        
        while running {
            print("Введите команду (добавить, завершить, показать или выход):")
            if let command = readLine()?.lowercased() {
                switch command {
                case "добавить":
                    print("Введите задачу:")
                    if let task = readLine() {
                        taskManager.addTask(task)
                        logger.log(message: "Задача добавлена: \(task)")
                    }
                case "завершить":
                    print("Введите номер завершенной задачи:")
                    if let indexStr = readLine(), let index = Int(indexStr) {
                        taskManager.completeTask(at: index - 1)
                        logger.log(message: "Задача завершена с номером \(index)")
                    }
                case "показать":
                    taskManager.printTasks()
                case "выход":
                    running = false
                default:
                    logger.log(message: "Некорректная команда")
                }
            }
        }
    }
}
