//
//  ContentView.swift
//  Frases
//
//  Created by Fernando Hazel Ascencio Baumgarten on 22/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var networkClient: NetworkClient = NetworkClient()
    
    var body: some View {

        List(networkClient.pokemons) { pokemon in
            PokemonCard(name: pokemon.name)
        }
        .onAppear(){
            networkClient.getPokemons()
        }
    }
}

#Preview {
    ContentView()
}
