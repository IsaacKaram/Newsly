//
//  Errors.swift
//  Newsly
//
//  Created by Isaac Karam on 30/03/22.
//

import Foundation

struct ErrorModel: Codable {
    let status: String?
    let code: String?
    let message: String?
}
