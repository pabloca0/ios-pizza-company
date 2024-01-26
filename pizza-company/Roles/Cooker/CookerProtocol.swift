import Foundation

enum FoodStatus {
    case done
    case missingIngredients
}

enum KitchenError: Error {
    case notEnoughIngredients
}

protocol CookerProtocol {
    func cook(this pizza: Pizza) -> FoodStatus
}
