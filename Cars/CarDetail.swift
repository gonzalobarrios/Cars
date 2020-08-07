//
//  CarDetail.swift
//  Cars
//
//  Created by Gonzalo Barrios on 3/23/20.
//  Copyright © 2020 Gonzalo Barrios. All rights reserved.
//

import SwiftUI

struct CarDetail: View {
    let car: Car

    var body: some View {
        Image(car.imageName)
        .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationBarTitle(Text(car.model))
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {

        NavigationView { CarDetail(car: testData[0]) }
    }
}
