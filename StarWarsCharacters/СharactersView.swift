//
//  ContentView.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 04.07.2021.
//

import SwiftUI

struct СharactersView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Storage.shared, id: \.id) { character in
                    NavigationLink(destination: DetailCharacterView(character: character)) {
                        ListRow(character: character)
                    }
                }
            }.navigationTitle("StarWars")
        }
    }
}

struct СharactersView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            СharactersView()
            СharactersView()
                .preferredColorScheme(.dark)
        }
    }
}
