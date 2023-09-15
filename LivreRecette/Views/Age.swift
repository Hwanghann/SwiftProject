//
//  Age.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import SwiftUI

struct Age: View {
    
    @State private var prenom: String = ""
    @ObservedObject private var AgeViewModel = NationalityViewModel(prenom: " ")
    
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
                    AgeViewModel.getAge(prenom: prenom)
                }.padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    
            }
            Spacer()
        }
    }
}


struct Age_Previews: PreviewProvider {
    static var previews: some View {
        Age()
    }
}
