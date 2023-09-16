//
//  Age.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import SwiftUI

struct Age: View {
    
    @State private var prenom: String = ""
    @ObservedObject private var varAgeViewModel = AgeViewModel(prenom: " ")
    
    var body: some View {
        VStack{
            Text("Age").padding()
            HStack{
                TextField(
                    "prénom",
                    text: $prenom
                ).padding()
                    .multilineTextAlignment(.center)
                Button("Rechercher"){
                    varAgeViewModel.getAge(prenom: prenom)
                }.padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    
            }.padding()
            
            VStack{
                HStack{
                    Text("Occurence du prénom : ")
                    Text(String(varAgeViewModel.Age?.count ?? 0))
                }.padding()
                HStack{
                    Text("Age moyen recenser : ")
                    Text(String(varAgeViewModel.Age?.age ?? 0))
                }.padding()
            }
        }
    }
}


struct Age_Previews: PreviewProvider {
    static var previews: some View {
        Age()
    }
}
