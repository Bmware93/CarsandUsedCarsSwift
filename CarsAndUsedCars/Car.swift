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
    
    init(make: String, model: String, year: Int, price: Decimal) {
        self.make = make
        self.model = model
        self.year = year
        self.price = price
    }
    
    func toString() {
        print("\(make) \(model) \(year) \(price)")
    }
}
