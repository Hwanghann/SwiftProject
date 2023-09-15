//
//  ListeOfNationality.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import SwiftUI

struct ListeOfNationality: View {

    @ObservedObject private var NationalitysViewModel = NationalityViewModel(prenom: " ")
    
    
    var body: some View {
        VStack {
            Text("salut")
            List(NationalitysViewModel.Nationalitys?.country ?? [],id: \.self) { nat in
                NavigationLink(nat.country_id ?? "") {
                    //BeerDetailsView(beer: beer)
                }
            }
        }
    }
}

struct ListeOfNationality_Previews: PreviewProvider {
    static var previews: some View {
        ListeOfNationality()
    }
}
