//
//  Nationality.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import SwiftUI

struct Nationality: View {
    
    @State private var prenom: String = ""
    @ObservedObject private var NationalitysViewModel = NationalityViewModel(prenom: " ")
    
    var body: some View {
        VStack{
            Text("Nationalite").padding()
            HStack{
                TextField(
                    "prénom",
                    text: $prenom
                ).padding()
                    .multilineTextAlignment(.center)
                Button("Rechercher"){
                    NationalitysViewModel.getNationalitys(prenom: prenom)
                }.padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
            }
            Spacer()
            VStack {
                HStack{
                    Text("Nombre de " + prenom + " dans le monde ")
                    Text(String(NationalitysViewModel.Nationalitys?.count ?? 0))
                }
                List(NationalitysViewModel.Nationalitys?.country ?? [],id: \.self) { nat in
                    VStack{
                        HStack{
                            Text("Pays : ").padding()
                            Text(nat.country_id).padding()
                        }
                        
                        HStack{
                            Text("Probabilité : ").padding()
                            Text(String(nat.probability*100)+"%").padding()
                        }
                    }
                }
            }
        }
    }
        
}

struct Nationality_Previews: PreviewProvider {
    static var previews: some View {
        Nationality()
    }
}
