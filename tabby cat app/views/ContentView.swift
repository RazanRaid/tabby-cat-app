//
//  ContentView.swift
//  tabby cat app
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            TabView{
                CatsFactsView()
                    .tabItem {
                        Label("Cat Fact" ,systemImage: "newspaper")}
                    
                CatBounceView()
                    .tabItem {
                        Label("bounce!" ,systemImage: "arrowshape.bounce.right.fill")}
                
                CatImagesView()
                    .tabItem {
                        Label("random gato",systemImage: "heart")}
                    CatGalleryView()
                    .tabItem {
                        Label("gallery",systemImage: "photo.on.rectangle.angled")
                    }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
