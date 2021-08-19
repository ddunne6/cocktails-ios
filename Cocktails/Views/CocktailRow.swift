//
//  CocktailRow.swift
//  Cocktails
//
//  Created by David Dunne on 19/08/2021.
//

import SwiftUI

struct CocktailRow: View {
    var cocktail: Cocktail
    
    var body: some View {
        HStack {
            Text(cocktail.strDrink)
        }
    }
}

struct CocktailRow_Previews: PreviewProvider {
    static var previews: some View {
        CocktailRow(cocktail: cocktails[0])
    }
}
