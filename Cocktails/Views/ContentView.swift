//
//  ContentView.swift
//  Cocktails
//
//  Created by David Dunne on 19/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Strawberry Daiquiri")
                .font(.title)
            Text("Instructions")
                .font(.headline)
            Text("Pour all ingredients into shaker with ice cubes. Shake well. Strain in chilled cocktail glass.")
                .font(.body)
            HStack {
                Spacer()
                CocktailImage()
                Spacer()
            }
            Text("Ingredients")
                .font(.headline)
            HStack {
                Text("Strawberry schnapps")
                    .font(.body)
                Spacer()
                Text("1/2 oz")
                    .font(.body)
                    .foregroundColor(Color.gray)
            }
            HStack {
                Text("Light rum")
                    .font(.body)
                Spacer()
                Text("1 oz")
                    .font(.body)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
