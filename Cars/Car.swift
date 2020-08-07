//
//  Car.swift
//  Cars
//
//  Created by Gonzalo Barrios on 3/22/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import Foundation

struct Car: Identifiable {

    var id = UUID()
    var model: String
    var brand: String
    var year: Int
    var imageName: String
    var currency: String
    var price: Int
}

#if DEBUG

let testData = [
    Car(model: "Continental GT V8", brand: "Bentleys", year: 2020, imageName: "BentleysGT", currency: "USD", price: 320000),
    Car(model: "Alpina B7", brand: "BMW", year: 2019, imageName: "BMWalpina", currency: "USD", price: 178000),
    Car(model: "AMG GLC 63 Coupe", brand: "Mercedes-Benz", year: 2020, imageName: "mercedesAMG", currency: "USD", price: 220000),
    Car(model: "BMW", brand: "X6", year: 2020, imageName: "BMWX6", currency: "USD", price: 150000),
    Car(model: "Alpina B7", brand: "BMW", year: 2019, imageName: "BMWalpina", currency: "USD", price: 178000),
    Car(model: "AMG GLC 63 Coupe", brand: "Mercedes-Benz", year: 2020, imageName: "mercedesAMG", currency: "USD", price: 220000),

    Car(model: "Continental GT V8", brand: "Bentleys", year: 2020, imageName: "BentleysGT", currency: "USD", price: 320000),
    Car(model: "Alpina B7", brand: "BMW", year: 2019, imageName: "BMWalpina", currency: "USD", price: 178000),
    Car(model: "AMG GLC 63 Coupe", brand: "Mercedes-Benz", year: 2020, imageName: "mercedesAMG", currency: "USD", price: 220000),
    Car(model: "BMW", brand: "X6", year: 2020, imageName: "BMWX6", currency: "USD", price: 150000),
    Car(model: "Alpina B7", brand: "BMW", year: 2019, imageName: "BMWalpina", currency: "USD", price: 178000),
    Car(model: "AMG GLC 63 Coupe", brand: "Mercedes-Benz", year: 2020, imageName: "mercedesAMG", currency: "USD", price: 220000)
]

#endif
