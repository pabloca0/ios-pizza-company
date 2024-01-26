import Foundation

class Clerk: ClerkProtocol {
    var order: Order = Order()
    var cooker: CookerProtocol

    init(cooker: CookerProtocol) {
        self.cooker = cooker
    }

    func annotate(this pizza: Pizza) -> OrderStatus {

    }

    func chargeWithStatusAndChange(payment: Double) -> (PaymentStatus, Double) {

    }
}
