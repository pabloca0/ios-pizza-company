import Foundation

class Restaurant {
    private var clients: [Client] = []
    private var clerk: ClerkProtocol

    init(clients: [Client], clerk: ClerkProtocol) {
        self.clients = clients
        self.clerk = clerk
    }

    func open() {
        clients.forEach { client in
            clerk.order = Order()
            print("---------------------------------")
            print("🧑‍🍳 Dependiente: Hola " + client.name + " que quieres? ")
            print("🧑‍💼 Cliente: Hola, quiero \(client.order)")
            client.order.pizzas.forEach { pizza in
                var status = clerk.annotate(this: pizza)
                switch status {
                case .finished:
                    print("🧑‍🍳 Dependiente: Tu [" + pizza.name + "] esta acabada")
                    orderFinished(money: client.pay())
                case .noMorePizza:
                    print("🧑‍🍳 Dependiente: no quedan ingredientes para [" + pizza.name + "]")
                    print("🧑‍💼 Cliente: Os odio")
                }
            }
        }
    }

    private func orderFinished(money: Double) {
        if clerk.order.pizzas.count == 0 {
            print("🧑‍🍳 Dependiente: Lo siento no tenemos stock para tu pedido")
            print("🧑‍💼 Cliente: 🤬🤬 LLAMA A FRANCESCO!")
        }
        print("🧑‍🍳 Dependiente: Pedido terminado, hora de pagar")
        let (status, change) = clerk.chargeWithStatusAndChange(payment: money)
        print("🧑‍🍳 Dependiente: son \(clerk.order.total)€")
        switch status {
        case .ok:
            print("🧑‍🍳 Dependiente: dinero justo, gracias")
        case .notEnough:
            print("🧑‍🍳 Dependiente: No es suficiente. PAGA!")
        case .change :
            print("🧑‍🍳 Dependiente: Gracias este es tu cambio: \(change)€")
        }
    }
}
