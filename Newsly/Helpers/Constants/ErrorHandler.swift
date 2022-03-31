//
//  ErrorHandler.swift
//  Newsly
//
//  Created by Isaac Karam on 30/03/22.
//

import Foundation

enum ErrorHandler: Error {
    case generalError
    case selectDropDown
    case invalidURL
    case custom(String)
    
    var message: String {
        switch self {
        case .generalError:
            return "Something went wrong, please try again"
        case .selectDropDown:
            return "Please select all fields"
        case .invalidURL:
            return "URL is invalid"
        case .custom(let message):
            return message
        }
    }
}
