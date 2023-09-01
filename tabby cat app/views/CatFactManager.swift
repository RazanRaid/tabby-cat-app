//
//  CatFactManager.swift
//  tabby cat app
//
//  Created by Razan Raid on 01/09/2023.
//

import Foundation

class CatFactsManager : ObservableObject{
    
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    @Published var catFact: CatFact?
    
    func getCatFact(){
        catFact = nil
        Task {
            let (data, _) =  try await URLSession.shared.data(from: apiURL)
//            print(String(data: data,encoding: .utf8)!)
         
            try await MainActor.run{
                catFact = try JSONDecoder().decode(CatFact.self, from: data)
            }
        }
    }
}
