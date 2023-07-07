//
//  main.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation

let diContainer = DIContainer()
let logger = diContainer.resolveLogger()
let taskManager = diContainer.resolveTaskManager()
let inputHandler = diContainer.resolveInputHandler(logger: logger, taskManager: taskManager)
let application = diContainer.resolveApplication(inputHandler: inputHandler)

application.run()
