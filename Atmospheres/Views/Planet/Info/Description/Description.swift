//
//  Description.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetDescription: View {
    let planet: Planet
    var planetInfo: PlanetInfo {
        PlanetInfo(planet: self.planet)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.planet.name())
                .font(.largeTitle)
                .padding(.leading)
                .animation(nil)
            Text("Pressure: \(self.planetInfo.pressure())")
                .padding(.leading)
                .animation(nil)
            PlanetComposition(composition: self.planetInfo.composition())
                .padding(.leading)
            Text(self.planetInfo.note())
                .padding(.leading)
                .animation(nil)
            
            ZStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.1))
                VStack {
                    Text("Planet sizes not to scale.")
                        .font(.caption)
                    Divider()
                    Text("Inspired by : COMPOUNDS INTEREST")
                        .font(.caption)
                    Text("Twitter: @compoundchem")
                        .font(.caption)
                        .onTapGesture {
                            let url = URL(string: "https://twitter.com/compoundchem")!
                            UIApplication.shared.open(url, options: [:], completionHandler: nil)
                        }
                    Divider()
                    Text("Atmospheric compositions taken from NASA")
                        .font(.caption)
                    Spacer()
                }
                .padding()
            }
            .padding(.top, 10)
        }
    }
}

struct PlanetDescription_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDescription(planet: .earth)
    }
}
