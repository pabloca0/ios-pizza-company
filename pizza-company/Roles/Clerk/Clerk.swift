import Foundation

class Clerk: ClerkProtocol {
    var cooker: CookerProtocol

    init(cooker: CookerProtocol) {
        self.cooker = cooker
    }

    func receive(order: Order) -> OrderStatus {
    }

    func chargeWithStatusAndChange(order: Order, payment: Double) -> (PaymentStatus, Double) {

    }
}
