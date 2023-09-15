//
//  ContentView.swift
//  LivreRecette
//
//  Created by Dorian George on 9/8/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var showDetails :String = "valeur"
    
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    NavigationLink(destination:Nationality(),label:{Text("Nationalité")}).padding()
                    NavigationLink(destination: Age(), label: {Text("Age")}).padding()
                }
            }
            
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
