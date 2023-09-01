//
//  CatFactManager.swift
//  tabby cat app
//
//  Created by Razan Raid on 01/09/2023.
//

import Foundation

class catFactManager : ObservableObject{
    
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    
    func getCatFact(){
        Task {
            let (data, _) =  try await URLSession.shared.data(from: apiURL)
            print(String(data: data,encoding: .utf8)!)
        }
    }
}
