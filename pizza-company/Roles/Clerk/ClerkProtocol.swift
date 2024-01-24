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
