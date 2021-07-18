//
//  DetailCharacterView.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 04.07.2021.
//

import SwiftUI

struct DetailCharacterView: View {
    
    let character: Character
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            Image(character.imageName)
            Text("Фракция: \(character.fraction)")
                .font(.headline)
                .padding()
                .background(colorScheme == .light ? Color.init(#colorLiteral(red: 0.8771092389, green: 0.8771092389, blue: 0.8771092389, alpha: 1)) : Color.init(#colorLiteral(red: 0.3319989915, green: 0.3319989915, blue: 0.3319989915, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal)
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(colorScheme == .light ? Color.init(#colorLiteral(red: 0.8771092389, green: 0.8771092389, blue: 0.8771092389, alpha: 1)) : Color.init(#colorLiteral(red: 0.3319989915, green: 0.3319989915, blue: 0.3319989915, alpha: 1)))
                .frame(height: 3)
                .padding()
            Text(character.description)
                .padding()
                .background(colorScheme == .light ? Color.init(#colorLiteral(red: 0.8771092389, green: 0.8771092389, blue: 0.8771092389, alpha: 1)) : Color.init(#colorLiteral(red: 0.3319989915, green: 0.3319989915, blue: 0.3319989915, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal)
        }.navigationBarTitle(character.name, displayMode: .automatic)
    }
}

struct DetailCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailCharacterView(character: Storage.shared[1])
            DetailCharacterView(character: Storage.shared[1])
                .preferredColorScheme(.dark)
        }
    }
}

