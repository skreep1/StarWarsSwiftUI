//
//  CharacterRow.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 18.08.2022.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    
    var body: some View {
        VStack {
            HStack {
                    
                Text(character.name)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .medium))
            }
        }
    }
}

