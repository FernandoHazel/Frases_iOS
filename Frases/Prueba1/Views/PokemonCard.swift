//
//  Card.swift
//  Frases
//
//  Created by Fernando Hazel Ascencio Baumgarten on 30/06/26.
//

import SwiftUI

struct PokemonCard: View {
    let name: String?
    
    var body: some View {

        Button(action:
                { print("Se hizo tap en \(name ?? "sin nombre")")}
        ) {
            ZStack {
                let num = Int.random(in: 1...6)
                Image("background-\(num)")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 180)
                    .clipped()
                    .cornerRadius(12)
                
                    if let name, !name.isEmpty {
                        Text(name)
                            .font(.headline)
                            .foregroundStyle(Color.white)
                    }
                
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    PokemonCard(name: "Pikachu")
}
