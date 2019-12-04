//
//  Chart.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetCompositionChart: View {
    var composition: [Composition]
    var body: some View {
        VStack(spacing: 0) {
            ForEach(self.composition) { element in
                Rectangle()
                .fill(element.color)
                .frame(width: 50, height: (element.occupation * 200))
            }
        }
        .background(Color.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct PlanetCompositionChart_Previews: PreviewProvider {
    static var previews: some View {
        PlanetCompositionChart(composition: [
            Composition(id: 0, color: Color("oxygen"), occupation: 0.12, label: "Oxygen"),
            Composition(id: 1, color: Color("sodium"), occupation: 0.88, label: "Sodium")
        ])
    }
}
