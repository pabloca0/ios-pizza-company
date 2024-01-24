import Foundation

class Cooker: CookerProtocol {
    var kitchenAssistant: KitchenAssistantProtocol

    init(kitchenAssistant: KitchenAssistantProtocol) {
        self.kitchenAssistant = kitchenAssistant
    }

    private func takeAll(ingredients: [Ingredient]) -> [Ingredient] {
        // Úsalo si crees que lo necesitas. No es obligatorio
    }

    func cook(this pizza: Pizza) -> FoodStatus {
        // Una pizza esta cocinada cuando tienes todos los ingredientes para poderla hacer
    }
}
