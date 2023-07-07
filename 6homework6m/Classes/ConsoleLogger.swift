//
//  ConsoleLogger.swift
//  6homework6m
//
//  Created by mavluda on 7/7/23.
//

import Foundation
class ConsoleLogger: Logger{
    func log(message: String) {
        print("Log: \(message)")
    }
}
