//
//  Encodable+Ext.swift
//  Newsly
//
//  Created by Isaac Karam on 29/03/22.
//

import Foundation

extension Encodable {
    func toJSON() -> [String: Any] {
        let encoder = JSONEncoder()
        return (try? JSONSerialization.jsonObject(with: encoder.encode(self), options: .allowFragments)) as? [String: Any] ?? [:]
    }
}
