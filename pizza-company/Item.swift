//
//  Item.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 16/1/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
