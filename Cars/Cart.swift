//
//  Cart.swift
//  Cars
//
//  Created by Gonzalo Barrios on 8/1/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import Foundation

class Cart: ObservableObject {
    @Published var items = [Car]()
}
