//
//  NationalityViewModel.swift
//  LivreRecette
//
//  Created by Dorian George on 9/15/23.
//

import Foundation
import Alamofire

class NationalityViewModel: ObservableObject {
    
    @Published var Nationalitys: StructNationalite?
    
    init (prenom: String) {
        getNationalitys(prenom: prenom)
    }
    
    func getNationalitys(prenom: String) {
        if(prenom == " "){return}
        let url: String = "https://api.nationalize.io/?name=" + prenom
        AF.request(url).response { response in
            self.Nationalitys = try! JSONDecoder().decode(StructNationalite.self, from: response.data!)
        }
    }
}
