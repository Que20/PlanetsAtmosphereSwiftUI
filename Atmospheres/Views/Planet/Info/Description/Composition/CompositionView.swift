//
//  CompositionView.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetComposition: View {
    var composition: [Composition]
    var body: some View {
        HStack(alignment: .center) {
            PlanetCompositionChart(composition: self.composition)
                .padding(.leading, 20)
            PlanetCompositionIndex(composition: self.composition)
        }
        .padding()
    }
}

struct PlanetComposition_Previews: PreviewProvider {
    static var previews: some View {
        PlanetComposition(composition: [
            Composition(id: 0, color: Color("oxygen"), occupation: 0.12, label: "Oxygen"),
            Composition(id: 1, color: Color("sodium"), occupation: 0.88, label: "Sodium")
        ])
    }
}
