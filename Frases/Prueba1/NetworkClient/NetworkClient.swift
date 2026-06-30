//
//  NetworkClient.swift
//  Frases
//
//  Created by Fernando Hazel Ascencio Baumgarten on 30/06/26.
//

import Foundation
import Combine

// Vamos a traer pokemones llamando al endpoint
// https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0

/// Usamos una clase y no una estructura porque sólo queremos una instancia de este objeto
/// no nos interesa que se creen copias como en las estructuras
final class NetworkClient: ObservableObject {
    
    @Published var pokemons: [PokemonDataModel] = []
    
    func getPokemons () {
        let url  = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
            }
            
            if let data = data,
               let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                let pokemonResponse = try? JSONDecoder().decode(PokemonResponseDataModel.self, from: data)
                //print("Respuesta de pokemons: \(pokemonResponse)")
                self.pokemons = pokemonResponse?.pokemons ?? []
            }
        }.resume()
    }
}
