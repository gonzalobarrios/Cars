//
//  CartView.swift
//  Cars
//
//  Created by Gonzalo Barrios on 8/2/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart

    var body: some View {
        return NavigationView {
            List {
                ForEach(cart.items) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 40.0, height: 40.0, alignment: .topLeading)

                        VStack(alignment: .leading) {
                            Text(item.brand + " - " + item.model + "\(item.year)")
                                .font(.headline)
                            Text( "\(item.currency) \(item.price)")
                        }
                    }
                }.onDelete(perform: delete)
            }.navigationBarItems(trailing: EditButton())
        }
    }

    func delete(at offsets: IndexSet) {
        cart.items.remove(atOffsets: offsets)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}

