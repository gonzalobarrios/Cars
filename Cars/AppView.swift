//
//  AppView.swift
//  Cars
//
//  Created by Gonzalo Barrios on 8/2/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import SwiftUI

struct AppView: View {

    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("Home")
                }
            }.tag(0)

            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                }
            }.tag(1)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
