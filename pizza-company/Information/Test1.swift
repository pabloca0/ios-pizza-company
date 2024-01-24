//
//  data.swift
//  pizza-company
//
//  Created by Fernando Salom Carratala on 20/1/24.
//

import Foundation

var cebolla = Ingredient(name: "cebolla")
var jamon = Ingredient(name: "jamón")
var queso = Ingredient(name: "queso")
var tomate = Ingredient(name: "tomate")
var bacon = Ingredient(name: "bacon")
var carne = Ingredient(name: "carne")

var carbonara = Pizza(
    ingredients: [queso, tomate, cebolla],
    price: 10.5)

var margarita = Pizza(
    ingredients: [queso, tomate, jamon],
    price: 10.5)

var barbacoa = Pizza(
    ingredients: [carne, queso, tomate, bacon],
    price: 10.5)

var clients = [Client(name: "Pedro",
                      order: Order(pizzas: [carbonara, margarita, barbacoa]),
                      money: 10.0)]

var stocks = [
    Stock(ingredient: cebolla, quantity: 3),
    Stock(ingredient: jamon, quantity: 2),
    Stock(ingredient: queso, quantity: 3),
    Stock(ingredient: tomate, quantity: 4),
    Stock(ingredient: bacon, quantity: 4),
    Stock(ingredient: carne, quantity: 3)]
