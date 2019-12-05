//
//  PlanetCell.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetCell: View {
    let planet: Planet
    let selected: Bool
    let action: (Planet) -> ()
    var body: some View {
        GeometryReader { geometry in
            Group {
                ZStack {
                    Rectangle()
                        .fill(self.selected ? Color("cell_selected") : Color("cell"))
                        .animation(.spring())
                    VStack(alignment: .center, spacing: 15) {
                        Text(self.planet.name())
                        self.planet.icon()
                    }
                }
            }
        }
        .onTapGesture {
            self.action(self.planet)
        }
        .frame(width: 110.0)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 10)
    }
}

struct PlanetCell_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            PlanetCell(planet: .earth, selected: false) { (p) in
                //
            }
            PlanetCell(planet: .saturn, selected: true) { (p) in
                //
            }
        }
    }
}
