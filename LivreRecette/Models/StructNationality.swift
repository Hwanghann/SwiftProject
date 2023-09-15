//
//  StructNationality.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import Foundation

struct StructNationalite: Codable {
    let count: Int
    let name: String
    let country: [Country]
}

struct Country: Codable, Hashable{

    let country_id: String
    let probability: Float
}
