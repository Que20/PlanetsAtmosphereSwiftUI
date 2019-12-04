//
//  Index.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetCompositionIndex: View {
    var composition: [Composition]
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(self.composition) { element in
                PlanetCompositionItem(element: element)
            }
        }
        .padding(.leading, 50)
    }
}

struct PlanetCompositionIndex_Previews: PreviewProvider {
    static var previews: some View {
        PlanetCompositionIndex(composition: [
            Composition(id: 0, color: Color("oxygen"), occupation: 0.12, label: "Oxygen"),
            Composition(id: 1, color: Color("sodium"), occupation: 0.88, label: "Sodium")
        ])
    }
}
