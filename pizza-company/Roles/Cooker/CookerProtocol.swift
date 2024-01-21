//
//  CookerProtocol.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 20/1/24.
//

import Foundation

enum FoodStatus {
    case done
    case missingIngredients
}
protocol CookerProtocol {
    func cook(this pizza: Pizza) -> FoodStatus
}
