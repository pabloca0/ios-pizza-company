class Client: ClientProtocol {
    var name: String
    var order: Order
    var money: Double

    init(name: String, order: Order, money: Double) {
        self.name = name
        self.order = order
        self.money = money
    }

    func pay() -> Double {
        return money
    }

    func makeAnOrder() -> Order {
        return order
    }
}
