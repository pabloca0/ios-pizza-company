//
//  KitchenAssistant.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 22/1/24.
//

import Foundation

class KitchenAssistant: KitchenAssistantProtocol {
    var wareHouse: WareHouseProtocol

    init(wareHouse: WareHouseProtocol) {
        self.wareHouse = wareHouse
    }

    private func search(ingredient: Ingredient) -> Ingredient? {
        //Úsalo si crees que lo necesitas
    }

    func checkWithdrawAndReturn(this ingredient: Ingredient) -> Ingredient? {
    }
}
