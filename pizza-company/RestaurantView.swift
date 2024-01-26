import SwiftUI
import SwiftData

struct RestaurantView: View {

    var body: some View {
        let wareHouse = WareHouse(stocks: [])
        let kitchenAssistant = KitchenAssistantSolution(wareHouse: wareHouse)
        let cooker = CookerSolution(kitchenAssistant: kitchenAssistant)
        let clerk = ClerkSolution(cooker: cooker)
        let restaurant = Restaurant(clients: [], clerk: clerk)
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
