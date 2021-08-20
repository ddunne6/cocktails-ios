//
//  CocktailList.swift
//  Cocktails
//
//  Created by David Dunne on 20/08/2021.
//

import SwiftUI

struct CocktailList: View {
    @State private var cocktails: [Cocktail]?
    var body: some View {
        VStack {
            NavigationView {
                if cocktails != nil {
                    List(cocktails!, id: \.idDrink) { cocktail in
                        NavigationLink(destination: CocktailDetail(fromCocktail: cocktail)) {
                            CocktailRow(fromCocktail: cocktail)
                        }
                    }
                    .navigationTitle("Cocktail List")
                }
            }
        }.onAppear {
            requestCocktail(searchTerm: "lime") { cocktails in
                self.cocktails = cocktails
            }
        }
    }
    
    init() {
        self.cocktails = nil
    }
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        CocktailList()
    }
}
