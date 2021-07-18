//
//  ListRow.swift
//  StarWarsCharacters
//
//  Created by Егор Никитин on 04.07.2021.
//

import SwiftUI

struct ListRow: View {
    
    let character: Character
    
    var body: some View {
        HStack {
            Image(character.imageName)
                .resizable()
                .frame(width: 50, height: 80)
//                .border(Color.black, width: 2)
//                .clipShape(Circle())
                .padding()
            Spacer()
            VStack(alignment: .trailing, spacing: 10) {
                Text(character.name)
                    .font(.title)
                Text("Фракция: \(character.fraction)")
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(character: Storage.shared[9])
    }
}
