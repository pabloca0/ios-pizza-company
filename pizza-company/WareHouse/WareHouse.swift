//
//  WareHouse.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 19/1/24.
//

import Foundation

class WareHouse: WareHouseProtocol {
    var stocks: [Stock]
    init(stocks: [Stock]) {
        self.stocks = stocks
    }

    func getIngredient(name: String) -> Ingredient {
        /*
        var stock = stocks.firstOrNull { it.ingredient.name == name }
        if (stock != null) {
            return stock.ingredient
        }
        throw(NotFoundException(message = "ERROR: El ingrediente no se ha encontrado"))
         */
        return nil
    }

    func withdraw(ingredient: Ingredient) {
        /*
        var stock: Stock = stocks.firstOrNull { it.ingredient.name == ingredient.name }.let { it }
            ?: throw(NotFoundException(message = "ERROR: El ingrediente no se ha encontrado"))
        if (stock.quantity - 1 < 0) {
            throw(NotEnoughException(message = "ERROR: No hay suficiente cantidad de este ingrediente"))
        }
        stock.quantity -= 1
         */
    }
}
