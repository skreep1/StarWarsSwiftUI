//
//  Request.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 15.08.2022.
//

import Foundation

class ApiManager {
    
    private let characterUrl = "https://swapi.dev/api/people/"
    
        func fetchCharacter(comp: @escaping ([Character]) -> ()) {
            let api = URL(string: characterUrl)
            
            URLSession.shared.dataTask(with: api!) { data, response, error in
                if error != nil { print("error")
                    return
                }
                
                do {
                let result =  try JSONDecoder().decode(AllCharacter.self, from: data!)
                    comp(result.allCharacters)
                } catch {
                    
                }
            } .resume()
        }
    
}
