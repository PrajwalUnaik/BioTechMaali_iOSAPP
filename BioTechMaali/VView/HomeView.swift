//
//  HomeView.swift
//  BioTechMaali
//
//  Created by Prajwal U on 06/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            
            PlantsView()
                .tabItem {
                    Image(systemName: "homekit")
                    Text("Browse")
                }
            
            YoutubeView()
                .badge("i")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Youtube")
                }
            
            BrowseView()
                .tabItem {
                    Image(systemName: "leaf.circle.fill")
                    Text("Plants")
                }.tableColumnHeaders(.hidden)
            
            GalleryView()
                .tabItem {
                    Image(systemName: "circle.hexagongrid.fill")
                    Text("Gallery")
                }
        }.tableStyle(.automatic)
    }
}

#Preview {
    HomeView()
}
