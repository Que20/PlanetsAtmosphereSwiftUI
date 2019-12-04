//
//  ContentView.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct Main: View {
    @State var current: Planet = .earth
    
    let planets: [Planet] = Planet.allCases
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 5) {
                    Text("In the Solar system").font(.largeTitle).bold().padding(.leading, 18)
                    Text("Planets :")
                        .font(.subheadline)
                        .padding(.top)
                        .padding(.leading)
                        .padding(.bottom, -10)
                        .foregroundColor(Color.gray)
                    ScrollView(.horizontal) {
                        Spacer(minLength: 20)
                        HStack {
                            Spacer()
                            ForEach(self.planets, id: \.self) { planet in
                                PlanetCell(planet: planet, selected: self.current == planet) { (selected) in
                                    self.current = selected
                                }
                            }
                        }
                        .frame(height: 120)
                        Spacer(minLength: 20)
                    }
                    PlanetDescription(planet: self.current)
                }
            }
            .navigationBarTitle(Text("Atmospheres"))
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
