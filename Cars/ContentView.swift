//
//  ContentView.swift
//  Cars
//
//  Created by Gonzalo Barrios on 3/20/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let cars: [Car] = testData

    var body: some View {
        NavigationView {
            List(self.cars) { car in
                NavigationLink(destination: DetailView(car: car)) {
                    Image(car.imageName)
                        .resizable()
                        .frame(width: 40.0, height: 40.0, alignment: .topLeading)

                    VStack(alignment: .leading) {
                        Text(car.brand + " - " + car.model + "\(car.year)")
                            .font(.headline)
                        Text( "\(car.currency) \(car.price)")
                    }
            }.navigationBarTitle("Car Store 🚗")
        }
        }
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Cart())
    }
}
