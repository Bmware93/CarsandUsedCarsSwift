//
//  Car.swift
//  CarsAndUsedCars
//
//  Created by Benia Morgan-Ware on 12/2/24.
//

import Foundation

class Car {
    var make: String
    var model: String
    var year: Int
    var price: Decimal
    static var cars: [Car] = []
    
    init(make: String, model: String, year: Int, price: Decimal) {
        self.make = make
        self.model = model
        self.year = year
        self.price = price
    }
    
    func toString() -> String {
        return "\(make) \(model) \(year) \(price.formatted(.currency(code: "USD")))"
    }
    
    static func listCars() {
        for (index, car) in cars.enumerated() {
            print(index + 1, car.toString())
        }
    }
    static func remove(index: Int) throws {
        guard index >= 0 && index < cars.count else {
            throw CarError.indexOutOfBounds
        }
        cars.remove(at: index)
    }
}
