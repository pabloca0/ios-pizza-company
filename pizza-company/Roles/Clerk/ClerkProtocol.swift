//
//  ClerkProtocol.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 20/1/24.
//

import Foundation

enum PaymentStatus {
    case ok
    case notEnough
    case change
}

enum OrderStatus {
    case finished
    case noMorePizza
}

protocol ClerkProtocol {
    func receive(order: Order) -> OrderStatus
    func chargeWithStatusAndChange(order: Order, payment: Double) -> (PaymentStatus, Double)
}
