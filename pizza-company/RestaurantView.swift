import SwiftUI
import SwiftData

struct RestaurantView: View {

    var body: some View {
        var wareHouse = WareHouse(stocks: stocks)
        var kitchenAssistant = KitchenAssistant(wareHouse: wareHouse)
        var cooker = Cooker(kitchenAssistant: kitchenAssistant)
        var clerk = Clerk(cooker: cooker)
        var restaurant = Restaurant(clients: clients, clerk: clerk)
        HStack {
            Text("Francesco`s pizza")
        }.onAppear {
            restaurant.open()
        }
    }
}

#Preview {
    RestaurantView()
}
