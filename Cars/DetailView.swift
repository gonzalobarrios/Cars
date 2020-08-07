//
//  DetailView.swift
//  Cars
//
//  Created by Gonzalo Barrios on 8/1/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    @EnvironmentObject var cart: Cart

    var car: Car

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                 Image(car.imageName)
                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(car.brand)
                        .background(Color.blue)
                        .opacity(0.5)
                        .cornerRadius(CGFloat(6))
            }

            Text(car.brand + " - " + car.model + " " + "\(car.year)")
                .font(.title)
                .padding()
            Text(car.model)
                .padding()

            Button(action: {
                self.cart.items.append(self.car)
            }) {
                Image(systemName: "cart.fill")
                Text("Add to Cart")
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(car: testData[0])
        }

    }
}
