![Diagrama](README/banner.jpg)

[![Academy](https://img.shields.io/badge/android-bootcamp-orange?style=flat-square)](https://img.shields.io/badge/android-bootcamp-orange?style=flat-square)

# IOS bootcamp - Restaurante de pizza
---
## ✍️ Acerca de

Este entrenamiento esta preparado para que practiques tu capacidad de trabajo en equipo y tu compresión
de los protocolos.

En este caso vamos a trabajar en un restaurante de pizza tenéis que dividiros en grupos de 3 y cada uno
de vosotr@s tendréis que desempeñar un rol distinto.

- Dependiente
- Cocinero
- Encargado del almacen

![Diagrama](README/diagrama.png)

## Roles
Cada rol tiene una misión única y es absolutamente necesario para poder hacer funcionar el restaurante. 

### 🧑‍💼 Dependient@
Tu misión es recibir los pedidos del cliente para darselos al cocinero y gestionar cualquier problema que este pueda tener.
Además al finalizar deberás calcular el importe del pedido y cobrar al cliente.

### 🧑‍🍳‍ Cociner@
Tu misión es cocinar todos los productos para ello necesitas ingredientes que tendrá que proporcionarte el encargado de almacen.
Para cocinar necesitas restar a los ingredientes de la pizza los ingredientes obtenidos del encargado del almacen. Recuerda avisar al dependiente si no puedes cocinar la pizza del cliente

### 👷 Encargad@ del almacen
Tu misión es obtener y manejar el stock del almacen. Los ingredientes no son infinitos recuerdalo. Tu almacen funciona así:

```swift
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
```

## 🎯 Objetivos
Para llevar a buen cabo este entrenamiento deberás de:
- Desarrollar tecnicamente tu rol
- Entender que las cosas no siempre van bien, es decir, no solo existe el "happy path"
- Trabaja en equipo encuentra la forma de que tu restaurante funcione

---
![Rudo](README/rudo.png)

**Develop by rudo apps**

hola@rudo.es | https://www.rudo.es
