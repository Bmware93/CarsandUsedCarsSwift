//
//  UsedCar.swift
//  CarsAndUsedCars
//
//  Created by Benia Morgan-Ware on 12/2/24.
//

import Foundation

class UsedCar: Car {
    var mileage: Double
    
    init(make: String, model: String, year: Int, price: Decimal, mileage: Double) {
        self.mileage = mileage
        super.init(make: make, model: model, year: year, price: price)
    }
    
    override func toString() -> String {
        super.toString() + "\nMileage: \(mileage)"
    }
   
}
