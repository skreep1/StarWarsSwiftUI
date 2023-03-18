//
//  DetailCharacterView.swift
//  StarWarsSwiftUI
//
//  Created by Maksim Skrypka on 16.08.2022.
//

import SwiftUI

struct DetailCharacterView: View {
    var character: Character
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HeaderView()
                Spacer()
            }
            
            HStack {
                
                VStack(alignment:.leading) {
                    
                    Text(character.name)
                        .padding()
                        .foregroundColor(Color("yellowColor"))
                        .font(.system(size: 30, weight: .bold))
                    
                    VStack {
                        HStack(spacing: 0) {
                            Text("Height: \(character.height)")
                                .padding()
                                .foregroundColor(.white)
                            
                            Text("Weight: \(character.weight)")
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                           
                            
                            
                        }
                        HStack {
                            VStack(alignment: .leading) {
                            Text("Details")
                                .padding()
                                .foregroundColor(.white)
                                .font(.system(size: 24, weight: .medium))
                                HStack {
                                Text("Birhday: \(character.birthday)")
                                    .padding()
                                    .foregroundColor(.white)
                                
                                    Text("Gender: \(character.gender)")
                                        .padding()
                                        .foregroundColor(.white)
                                }
                                HStack {
                                Text("Color eye: \(character.eye)")
                                    .padding()
                                    .foregroundColor(.white)
                                    Text("Hair color: \(character.hair)")
                                        .padding()
                                        .foregroundColor(.white)
                                
                                }
                                Text("Skin Color: \(character.skin)")
                                    .padding()
                                    .foregroundColor(.white)
                        }
                            
                            
    
                        Spacer()
                        }
                        .background(Color("backgroundThree"))
                        .cornerRadius(15)
                        .padding()
                        
                    }
                    
                    
                }
                

                
                
            }
            
            .background(Color("backgroundTwo"))
            .cornerRadius(15)
            .padding()
            
            
        }
    }
}
