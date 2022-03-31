//
//  Requestable.swift
//  Newsly
//
//  Created by Isaac Karam on 29/03/22.
//

import Foundation
import Alamofire

protocol Requestable {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get }
    var headers: HTTPHeaders? { get }
    var encoding: ParameterEncoding { get }
}
