//
//  PlanetInfo.swift
//  Atmospheres
//
//  Created by Kévin MAAREK on 04/12/2019.
//  Copyright © 2019 Kévin MAAREK. All rights reserved.
//

import SwiftUI

struct PlanetInfo {
    let planet: Planet
    
    func pressure() -> String {
        switch planet {
        case .mercury:
            return "~ 10^(-14) atm"
        case .venus:
            return "~ 90 atm"
        case .earth:
            return "~ 1 atm"
        case .mars:
            return "~ 0.0006 atm"
        case .jupiter:
            return ">> 1000 atm\nGas giant"
        case .saturn:
            return ">> 1000 atm\nGas giant"
        case .uranus:
            return ">> 1000 atm\nGas giant"
        case .neptune:
            return ">> 1000 atm\nGas giant"
        }
    }
    
    func note() -> String {
        switch planet {
        case .mercury:
            return "Other gases : He, K, Ar, CO2, H2O, N2, Xe, Kr, Ne"
        case .venus:
            return "Other gases : So2, Ar, H2O, CO2, He, Ne\nClouds of sufluric acid."
        case .earth:
            return "Other gases : CO2, Ne, He, CH4, Kr, H2"
        case .mars:
            return "Other gases : O2, CO2, H2O, NO, Ne, Kr, Xe"
        case .jupiter:
            return "Other gases : CH4, NH2, C2H4, N2O\nHydrogen is metallic at hight pressur."
        case .saturn:
            return "Other gases : CH4, C2H4, H2O\nSuflur gives gas clouds a yellow cast."
        case .uranus:
            return "Methane gas causes uranus's blue color."
        case .neptune:
            return "Strongest winds in the solar system."
        }
    }
    
    func composition() -> [Composition] {
        switch planet {
        case .mercury:
            return [
                Composition(id: 0, color: Color("oxygen"), occupation: 0.42, label: "Oxygen"),
                Composition(id: 1, color: Color("sodium"), occupation: 0.29, label: "Sodium"),
                Composition(id: 2, color: Color("hydrogen"), occupation: 0.22, label: "Hydrogen"),
                Composition(id: 3, color: Color("other"), occupation: 0.07, label: "Other Gases")
            ]
        case .venus:
            return [
                Composition(id: 0, color: Color("carbon_dioxide"), occupation: 0.96, label: "Carbon Dioxide"),
                Composition(id: 1, color: Color("nitrogen"), occupation: 0.03, label: "Nitrogen"),
                Composition(id: 2, color: Color("other"), occupation: 0.01, label: "Other Gases")
            ]
        case .earth:
            return [
                Composition(id: 0, color: Color("nitrogen"), occupation: 0.78, label: "Nitrogen"),
                Composition(id: 1, color: Color("oxygen"), occupation: 0.21, label: "Oxygen"),
                Composition(id: 2, color: Color("argon"), occupation: 0.01, label: "Argon"),
                Composition(id: 3, color: Color("other"), occupation: 0.002, label: "Other Gases")
            ]
        case .mars:
            return [
                Composition(id: 0, color: Color("carbon_dioxide"), occupation: 0.95, label: "Carbon Dioxide"),
                Composition(id: 1, color: Color("nitrogen"), occupation: 0.03, label: "Nitrogen"),
                Composition(id: 2, color: Color("argon"), occupation: 0.015, label: "Argon"),
                Composition(id: 3, color: Color("other"), occupation: 0.005, label: "Other Gases")
            ]
        case .jupiter:
            return [
                Composition(id: 0, color: Color("hydrogen"), occupation: 0.90, label: "Hydrogen"),
                Composition(id: 1, color: Color("helium"), occupation: 0.10, label: "Helium"),
                Composition(id: 2, color: Color("other"), occupation: 0.002, label: "Other Gases")
            ]
        case .saturn:
            return [
                Composition(id: 0, color: Color("hydrogen"), occupation: 0.96, label: "Hydrogen"),
                Composition(id: 1, color: Color("helium"), occupation: 0.03, label: "Helium"),
                Composition(id: 2, color: Color("other"), occupation: 0.01, label: "Other Gases")
            ]
        case .uranus:
            return [
                Composition(id: 0, color: Color("hydrogen"), occupation: 0.83, label: "Hydrogen"),
                Composition(id: 1, color: Color("helium"), occupation: 0.15, label: "Helium"),
                Composition(id: 2, color: Color("methane"), occupation: 0.025, label: "Methane")
            ]
        case .neptune:
            return [
                Composition(id: 0, color: Color("hydrogen"), occupation: 0.80, label: "Hydrogen"),
                Composition(id: 1, color: Color("helium"), occupation: 0.19, label: "Helium"),
                Composition(id: 2, color: Color("methane"), occupation: 0.001, label: "Methane")
            ]
        }
    }
}
