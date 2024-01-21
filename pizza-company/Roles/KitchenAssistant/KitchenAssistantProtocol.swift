//
//  WareHouseProtocol.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 20/1/24.
//

import Foundation

protocol KitchenAssistantProtocol {
    func checkWithdrawAndReturn(this ingredient: Ingredient) -> Ingredient?
}
