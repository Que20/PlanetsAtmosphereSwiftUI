//
//  IndexItem.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetCompositionItem: View {
    var element: Composition
    var formatedOccupation: String {
        if self.element.occupation * 100 < 1.0 {
            return "< 1"
        } else {
            return String(format: "%.0f", self.element.occupation*100)
        }
    }
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Circle()
                .fill(self.element.color)
                .frame(width: 10, height: 10)
            Text("\(self.element.label) \(self.formatedOccupation) %")
                .animation(nil)
        }
    }
}

struct PlanetCompositionItem_Previews: PreviewProvider {
    static var previews: some View {
        PlanetCompositionItem(element: Composition(id: 0, color: Color("oxygen"), occupation: 0.42, label: "Oxygen"))
    }
}
