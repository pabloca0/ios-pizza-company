//
//  Stock.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 19/1/24.
//

import Foundation

class Stock {
    var ingredient: Ingredient
    var quantity: Int

    init(ingredient: Ingredient, quantity: Int) {
        self.ingredient = ingredient
        self.quantity = quantity
    }
}
