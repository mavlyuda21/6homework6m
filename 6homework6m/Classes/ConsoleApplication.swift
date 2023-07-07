//
//  ConsoleApplication.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
class ConsoleApplication: Application {
    let inputHandler: InputHandler
    
    init(inputHandler: InputHandler) {
        self.inputHandler = inputHandler
    }
    
    func run() {
        // Запуск приложения
        inputHandler.handleInput()
    }
}
