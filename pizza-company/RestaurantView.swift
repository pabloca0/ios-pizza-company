import SwiftUI
import SwiftData

struct RestaurantView: View {

    var body: some View {
        let wareHouse = WareHouse(stocks: stocks)
        let kitchenAssistant = KitchenAssistant(wareHouse: wareHouse)
        let cooker = Cooker(kitchenAssistant: kitchenAssistant)
        let clerk = Clerk(cooker: cooker)
        let restaurant = Restaurant(clients: clients, clerk: clerk)
        ZStack {
            Image(.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }.onAppear {
            restaurant.open()
        }.ignoresSafeArea()
    }
}

#Preview {
    RestaurantView()
}
