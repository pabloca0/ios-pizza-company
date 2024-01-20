//
//  WareHouseProtocol.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 19/1/24.
//

import Foundation

protocol WareHouseProtocol {
    func getIngredient(name: String) throws -> Ingredient
    func withdraw(ingredient: Ingredient) throws
}
