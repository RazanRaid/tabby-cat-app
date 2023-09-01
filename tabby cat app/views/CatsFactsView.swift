//
//  CatsFactsView.swift
//  tabby cat app
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct CatsFactsView: View {
    @StateObject var catFactsManager = CatFactsManager()
    
    var body: some View {
        
        VStack{
            if let catFact = catFactsManager.catFact {
                Text(catFact.fact)
                    .padding()
            }else{
                ProgressView()
                    .progressViewStyle(.circular)
            }
        }
            .onAppear{
                catFactsManager.getCatFact()
            }
    }
}

struct CatsFactsView_Previews: PreviewProvider {
    static var previews: some View {
        CatsFactsView()
    }
}
