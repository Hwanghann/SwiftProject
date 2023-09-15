//
//  Nationality.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

struct StructNationalite: Codable, Identifiable {
    let id: Int?
    let count: Int?
    let name: String?
    let country: [Country]
}

struct Country: Codable, Identifiable{
    let id: Int?
    let country_id: String?
    let probability: Float?
}
