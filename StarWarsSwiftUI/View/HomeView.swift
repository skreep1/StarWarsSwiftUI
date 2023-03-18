//
//  ContentView.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 15.08.2022.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
                CharacterListView()
            }
            
            
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}
