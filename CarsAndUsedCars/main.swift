//
//  main.swift
//  CarsAndUsedCars
//
//  Created by Benia Morgan-Ware on 12/2/24.
//

import Foundation

var newCar1 = Car(make: "Toyota", model: "Prius", year: 2019, price: 20000)
var newCar2 = Car(make: "Jeep", model: "Grand Cherokee", year: 2025, price: 60000)
var newCar3 = Car(make: "Honda", model: "Civic", year: 2024, price: 25000)
var newCar4 = Car(make: "Tesla", model: "Model 3", year: 2023, price: 45000)
var newCar5 = Car(make: "Chevrolet", model: "Bolt EV", year: 2024, price: 32000)
// Used Cars
var usedCar1 = UsedCar(make: "Ford", model: "Fusion", year: 2015, price: 10000, mileage: 133000)
var usedCar2 = UsedCar(make: "Nissan", model: "Altima", year: 2012, price: 7000, mileage: 150000)
var usedCar3 = UsedCar(make: "BMW", model: "X5", year: 2016, price: 18000, mileage: 85000)
var usedCar4 = UsedCar(make: "Hyundai", model: "Elantra", year: 2018, price: 12000, mileage: 60000)
var usedCar5 = UsedCar(make: "Subaru", model: "Outback", year: 2014, price: 9000, mileage: 110000)

Car.cars.append(contentsOf: [newCar1,newCar2, newCar3, newCar4, newCar5, usedCar1, usedCar2, usedCar3, usedCar4, usedCar5])

func isRealNumber(_ string: String) -> Bool {
    guard !string.isEmpty else { return false }
    guard Int(string) != nil else { return false }
    
    return true
}

print("Welcome to the Renaissance Car Emporium.")
print("We have an inventory of new and used cars, we hope you find something you like!")
print("Here is our current list of cars we have for sale:")
print()
Car.listCars()

print()
print("Which car would you like to purchase today? Please select the number of the car you would like to purchase")
var userChoice = readLine() ?? ""

while !isRealNumber(userChoice)  {
    print("Your input was invalid, please enter a valid number")
    userChoice = readLine() ?? ""
}
var carChoice = Int(userChoice)!

while carChoice < 1 || carChoice > Car.cars.count {
    print("Your input was invalid, please enter a number between 1 and \(Car.cars.count)")
    userChoice = readLine() ?? ""
    carChoice = Int(userChoice) ?? 0
}
var selectedCar = Car.cars[carChoice - 1]

print("You've selected \(selectedCar.toString()) ")
print("Thank you for your purchase!")
try Car.remove(index: carChoice - 1)

print("Here is our updated list of cars:")
print()
Car.listCars()








