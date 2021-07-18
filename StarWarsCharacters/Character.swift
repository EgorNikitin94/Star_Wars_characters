//
//  Character.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 04.07.2021.
//

import Foundation

struct Character: Identifiable {
    let id: UUID = UUID()
    let name: String
    let fraction: String
    let imageName: String
    let description: String
}
