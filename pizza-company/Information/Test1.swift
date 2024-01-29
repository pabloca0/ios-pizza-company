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
    name: "carbonara",
    ingredients: [queso, tomate, cebolla],
    price: 12.5)

var margarita = Pizza(
    name: "margarita",
    ingredients: [queso, tomate, jamon],
    price: 10.5)

var barbacoa = Pizza(
    name: "barbacoa",
    ingredients: [carne, queso, tomate, bacon],
    price: 14.5)

var cuatroQuesos = Pizza(
    name: "cuatro quesos",
    ingredients: [queso, queso, queso, queso],
    price: 13.5)

