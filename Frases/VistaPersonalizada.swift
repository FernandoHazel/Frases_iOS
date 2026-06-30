//
//  VistaPersonalizada.swift
//  Frases
//
//  Created by Fernando Hazel Ascencio Baumgarten on 22/06/26.
//

import SwiftUI

struct VistaPersonalizada: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName.isEmpty ? "questionmark.circle" : imageName)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text.isEmpty ? "Sin título" : text)
        }
        .padding()
    }
}

#Preview {
    VistaPersonalizada(imageName: "globe", text: "Texto de preview")
}
