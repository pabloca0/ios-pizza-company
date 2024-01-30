//
//  Test2.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 26/1/24.
//

import Foundation

var clients = [
    Client(name: "Pedro",
           order: Order(pizzas: [carbonara, margarita, barbacoa]),
           money: 40.0),
    Client(name: "Irene",
           order: Order(pizzas: [barbacoa]),
           money: 10.5),
    Client(name: "Alvaro",
           order: Order(pizzas: [carbonara, margarita, barbacoa]),
           money: 14.0),
    Client(name: "Laura",
           order: Order(pizzas: [cuatroQuesos]),
           money: 10.0)
]

var stocks = [
    Stock(ingredient: cebolla, quantity: 3),
    Stock(ingredient: jamon, quantity: 2),
    Stock(ingredient: queso, quantity: 6),
    Stock(ingredient: tomate, quantity: 5),
    Stock(ingredient: bacon, quantity: 4),
    Stock(ingredient: carne, quantity: 3)]
