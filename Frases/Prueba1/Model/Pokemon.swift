//
//  Pokemon.swift
//  Frases
//
//  Created by Fernando Hazel Ascencio Baumgarten on 30/06/26.
//

///Decodable → Permite leer datos (por ejemplo, convertir JSON a un objeto Swift).
///Encodable → Permite escribir datos (por ejemplo, convertir un objeto Swift a JSON).
///Codable → Hace ambas cosas.

import Foundation

struct PokemonDataModel: Decodable, Identifiable {
    let id = UUID() // Esto es para que lo pueda iterar la lista en la UI, no viene en la respuesta
    var name: String?
    let url: String?
}

extension PokemonDataModel {
    static var mocks: [PokemonDataModel] {
        [
            PokemonDataModel(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            PokemonDataModel(name: "ivysaur", url: "https://pokeapi.co/api/v2/pokemon/2/"),
            PokemonDataModel(name: "venusaur", url: "https://pokeapi.co/api/v2/pokemon/3/")
        ]
    }
}

struct PokemonResponseDataModel: Decodable {
    let pokemons: [PokemonDataModel]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pokemons = try container.decode([PokemonDataModel].self, forKey: .results)
    }
}
