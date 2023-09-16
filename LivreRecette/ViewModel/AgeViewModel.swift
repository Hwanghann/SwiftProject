//
//  AgeViewModel.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import SwiftUI
import Alamofire

class AgeViewModel: ObservableObject {
    
    @Published var Age: StructAge?
    
    init (prenom: String) {
        getAge(prenom: prenom)
    }
    
    func getAge(prenom: String) {
        if(prenom == " "){return}
        let url: String = "https://api.agify.io/?name=" + prenom
        AF.request(url).response { response in
            self.Age = try! JSONDecoder().decode(StructAge.self, from: response.data!)
        }
    }
}
