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
                    .padding(17)
                    .font(.title)
                    
            }else{
                ProgressView()
                    .progressViewStyle(.circular)
            }
            Button {
                catFactsManager.catFact=nil
                catFactsManager.getCatFact()
            }label: {
                Text("next fact")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.brown)
                    .cornerRadius(10)
                  
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
