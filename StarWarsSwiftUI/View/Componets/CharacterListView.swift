//
//  ListCharacterView.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 15.08.2022.
//

import SwiftUI

struct CharacterListView: View {
    
    private let characterRequest = ApiManager()
    @State private var characters: [Character] = []
    
    // change color navigationtitle
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        
    
        NavigationView {
            List(characters) { character in
                NavigationLink(destination: DetailCharacterView(character: character)) {
                    CharacterRow(character: character)
                }
                .padding()
                .background(Color("background"))
                .listRowBackground(Color("background"))
                .navigationTitle(Text("Characters"))

            }.onAppear() {
                
                characterRequest.fetchCharacter { character in
                    
                    DispatchQueue.main.async {
                        self.characters = character
                    }
                    
                }
            }
            .listStyle(.plain)
            .background(Color("background"))
            
        }
        
    }
    
}


