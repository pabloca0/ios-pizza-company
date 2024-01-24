import Foundation

protocol WareHouseProtocol {
    func getIngredient(name: String) throws -> Ingredient
    func withdraw(ingredient: Ingredient) throws
}
