//
//  Planet.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

enum Planet: CaseIterable {
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    
    func name() -> some View {
        switch self {
        case .mercury:
            return Text("Mercury")
        case .venus:
            return Text("Venus")
        case .earth:
            return Text("Earth")
        case .mars:
            return Text("Mars")
        case .jupiter:
            return Text("Jupiter")
        case .saturn:
            return Text("Saturn")
        case .uranus:
            return Text("Uranus")
        case .neptune:
            return Text("Neptune")
        }
    }
    
    func icon() -> some View {
        switch self {
        case .mercury:
            return PlanetIcon(color: Color("mercury"), size: .small)
        case .venus:
            return PlanetIcon(color: Color("venus"), size: .medium)
        case .earth:
            return PlanetIcon(color: Color("earth"), size: .medium)
        case .mars:
            return PlanetIcon(color: Color("mars"), size: .small)
        case .jupiter:
            return PlanetIcon(color: Color("jupiter"), size: .large)
        case .saturn:
            return PlanetIcon(color: Color("saturn"), size: .medium, ring: .horizontal(color: Color("saturn_ring")))
        case .uranus:
            return PlanetIcon(color: Color("uranus"), size: .medium, ring: .vertical(color: Color("uranus_ring")))
        case .neptune:
            return PlanetIcon(color: Color("neptune"), size: .medium)
        }
    }
}
