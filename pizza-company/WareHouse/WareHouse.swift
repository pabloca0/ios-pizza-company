//
//  WareHouse.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 19/1/24.
//

import Foundation

enum WareHouseError: Error {
    case notFound
    case notEnough
}

class WareHouse: WareHouseProtocol {
    var stocks: [Stock]
    init(stocks: [Stock]) {
        self.stocks = stocks
    }

    func getIngredient(name: String) throws -> Ingredient {
        let stock = stocks.first { $0.ingredient.name == name }
        guard let stock else {
            throw WareHouseError.notFound
        }
        return stock.ingredient
    }

    func getStock(for ingredient: Ingredient) throws -> Stock {
        let stock = stocks.first { $0.ingredient.name == ingredient.name }
        guard let stock else {
            throw WareHouseError.notFound
        }
        return stock
    }

    func withdraw(ingredient: Ingredient) throws {
        let ingredient = try getIngredient(name: ingredient.name)
        var stock = try getStock(for: ingredient)
        if (stock.quantity - 1 < 0) {
            throw WareHouseError.notEnough
        }
        stock.quantity -= 1
    }
}
