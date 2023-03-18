//
//  Character.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 15.08.2022.
//

import Foundation

struct AllCharacter: Codable {
    let allCharacters: [Character]
    
    enum CodingKeys: String, CodingKey {
        case allCharacters = "results"
    }
}

struct Character: Codable, Identifiable {
    let id = UUID()
    let name: String
    let height: String
    let weight: String
    let hair: String
    let skin: String
    let eye: String
    let birthday: String
    let gender: String
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case height = "height"
        case weight = "mass"
        case hair = "hair_color"
        case skin = "skin_color"
        case eye = "eye_color"
        case birthday = "birth_year"
        case gender = "gender"
        

    }
}
