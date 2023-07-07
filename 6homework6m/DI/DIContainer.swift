//
//  DIContainer.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
class DIContainer {
    func resolveLogger() -> Logger {
        return ConsoleLogger()
    }
    
    func resolveTaskManager() -> TaskManager {
        return InMemoryTaskManager()
    }
    
    func resolveInputHandler(logger: Logger, taskManager: TaskManager) -> InputHandler {
        return ConsoleInputHandler(logger: logger, taskManager: taskManager)
    }
    
    func resolveApplication(inputHandler: InputHandler) -> Application {
        return ConsoleApplication(inputHandler: inputHandler)
    }
}
