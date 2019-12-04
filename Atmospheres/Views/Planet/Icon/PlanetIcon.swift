//
//  PlanetIcon.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetIcon: View {
    let color: Color
    let size: PlanetSize
    let ring: PlanetRing?
    
    var body: some View {
        ZStack {
            Group {
                Circle()
                .fill(self.color)
            }
            Group {
                RoundedRectangle(cornerRadius: 5)
                .fill(self.ring?.color() ?? Color.clear)
                .frame(width: ((self.hasVerticalRing()) ? 4 : (self.size.size() + 30)), height: ((self.hasVerticalRing()) ? (self.size.size() + 20) : 4))
            }
        }
        .frame(width: self.size.size(), height: self.size.size(), alignment: .center)
    }
    
    init(color: Color, size: PlanetSize, ring: PlanetRing? = nil) {
        self.color = color
        self.size = size
        self.ring = ring
    }
    
    func hasVerticalRing() -> Bool {
        if let ring = self.ring {
            switch ring {
            case .vertical(_):
                return true
            default:
                return false
            }
        } else {
            return false
        }
    }
}
