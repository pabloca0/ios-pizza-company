//
//  Restaurant.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 21/1/24.
//

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
                print("RESTAURANT", "Cliente \(client.name): Quiero pedir \(client.order)")
                var status = clerk.receive(order: client.makeAnOrder())
                switch status {
                case .finished:
                    orderFinished(order: client.makeAnOrder(), money: client.pay())
                case .noMorePizza:
                    print("RESTAURANT", "Cliente: Os odio")
                }
            }
    }
    private func orderFinished(order: Order, money: Double) {
        print("RESTAURANT", "Dependiente: Pedido terminado, hora de pagar")
        let (status, change) = clerk.chargeWithStatusAndChange(order: order ,payment: money)
        switch status {
        case .ok:
            print("RESTAURANT","Dependiente: dinero justo, gracias")
        case .notEnough:
            print("RESTAURANT","Dependiente: No es suficiente. PAGA!")
        case .change :
            print("RESTAURANT","Dependiente: Gracias este es tu cambio: \(change)")
        }
    }
}
