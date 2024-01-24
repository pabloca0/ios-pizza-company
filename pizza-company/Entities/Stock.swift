import Foundation

class Stock {
    var ingredient: Ingredient
    var quantity: Int

    init(ingredient: Ingredient, quantity: Int) {
        self.ingredient = ingredient
        self.quantity = quantity
    }
}
