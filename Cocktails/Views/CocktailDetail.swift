//
//  CocktailDetail.swift
//  Cocktails
//
//  Created by David Dunne on 20/08/2021.
//

import SwURL
import SwiftUI

struct CocktailDetail: View {
    var cocktail: Cocktail
    
    init(fromCocktail: Cocktail?) {
        if fromCocktail != nil {
            cocktail = fromCocktail!
        }
        else {
            let cocktails: [Cocktail] = load("cocktailData.json")
            cocktail = cocktails[0]
        }
        SwURL.setImageCache(type: .persistent)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(cocktail.strDrink)
                    .font(.title)
                Text("Instructions")
                    .font(.headline)
                Text(cocktail.strInstructions)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.body)
                HStack {
                    Spacer()
                    RemoteImageView(url: URL(string: cocktail.strDrinkThumb)!, placeholderImage: Image(systemName: "photo"), transition: .custom(transition: .opacity, animation: .easeIn(duration: 0.25)))
                        .imageProcessing({
                            image in
                            return image
                                .resizable()
                                .frame(width: 250, height: 250)
                        })
                    Spacer()
                }
                Text("Ingredients")
                    .font(.headline)
                ForEach(cocktail.ingredientsAndMeasures()) {
                    ingredientInfo in
                    HStack {
                        Text(ingredientInfo.ingredient)
                            .font(.body)
                        Spacer()
                        Text(ingredientInfo.measure)
                            .font(.body)
                            .foregroundColor(Color.gray)
                    }
                }
            }
        }
        .padding()
        .navigationTitle(cocktail.strDrink)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CocktailDetail_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetail(fromCocktail: nil)
    }
}
