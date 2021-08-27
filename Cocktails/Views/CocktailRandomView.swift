//
//  CocktailRandomView.swift
//  Cocktails
//
//  Created by David Dunne on 27/08/2021.
//

import SwiftUI

struct CocktailRandomView: View {
    @State private var cocktail: Cocktail?
    
    var body: some View {
        VStack {
            if cocktail == nil {
                Button(action: {
                    getRandomCocktails()
                }){ Text("Generate Cocktail").padding() }
            }
            else {
                CocktailDetail(fromCocktail: cocktail)
                Button(action: {
                    cocktail = nil
                }){ Text("Reset").padding() }
            }
        }
    }
    
    func getRandomCocktails() {
        requestRandomCocktail() { cocktails in
            self.cocktail = cocktails[0]
        }
    }
    
    init() {
        self.cocktail = nil
    }
}

struct CocktailRandomView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailRandomView()
    }
}
