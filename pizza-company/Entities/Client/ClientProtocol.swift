//
//  Client^.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 20/1/24.
//

import Foundation

protocol ClientProtocol {
    func pay() -> Double
    func makeAnOrder() -> Order
}
