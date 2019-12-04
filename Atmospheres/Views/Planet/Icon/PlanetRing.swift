//
//  PlanetRing.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

enum PlanetRing {
    case horizontal(color: Color)
    case vertical(color: Color)
    
    func color() -> Color {
        switch self {
        case .horizontal(let color):
            return color
        case .vertical(let color):
            return color
        }
    }
}
