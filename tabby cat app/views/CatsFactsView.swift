//
//  CatsFactsView.swift
//  tabby cat app
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct CatsFactsView: View {
    @StateObject var CatsFactManager = catFactManager()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear{
                CatsFactManager.getCatFact()
            }
    }
}

struct CatsFactsView_Previews: PreviewProvider {
    static var previews: some View {
        CatsFactsView()
    }
}
