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
    var order: Order { get set }
    func annotate(this pizza: Pizza) -> OrderStatus
    func chargeWithStatusAndChange(payment: Double) -> (PaymentStatus, Double)
}
