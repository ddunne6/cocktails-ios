//
//  CocktailTabView.swift
//  Cocktails
//
//  Created by David Dunne on 21/08/2021.
//

import SwiftUI

struct CocktailTabView: View {
    var body: some View {
        TabView {
            CocktailList()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            CocktailList()
                .tabItem {
                    Label("Favourites", systemImage: "star.fill")
                }
            CocktailList()
                .tabItem {
                    Label("Random", systemImage: "cube.fill")
                }
            CocktailList()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

struct CocktailTabView_Previews: PreviewProvider {
    static var previews: some View {
        CocktailTabView()
    }
}
