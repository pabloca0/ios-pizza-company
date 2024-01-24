import Foundation

enum FoodStatus {
    case done
    case missingIngredients
}
protocol CookerProtocol {
    func cook(this pizza: Pizza) -> FoodStatus
}
