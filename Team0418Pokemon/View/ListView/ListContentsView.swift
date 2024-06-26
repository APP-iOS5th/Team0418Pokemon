//
//  ListContentsView.swift
//  Team0418Pokemon
//
//  Created by 백동현 on 5/2/24.
//

import SwiftUI

struct ListContentsView: View {
    let min: Int
    let max: Int
    let pokemonList: [Pokemon]
    
    var body: some View {
        if pokemonList.isEmpty {
            Spacer()
            Text("포켓몬이 없습니다.")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        } else {
            NavigationStack {
                ScrollView {
                    ForEach (pokemonList, id: \.id) { pokemon in
                        LazyVStack {
                            NavigationLink {
                                DetailView(pokemonId: pokemon.id)
                            } label: {
                                ListItem(number: pokemon.id, name: "\(pokemon.name)", imageUrl: pokemon.imageUrlString)
                                    .frame(height: 100)
                            }
                            .foregroundStyle(.primary)
                        }
                    }
                }
            }
            .navigationTitle("\(min) - \(max)")
        }
    }
}

#Preview {
    ListContentsView(min: 1, max: 10, pokemonList: [])
}
