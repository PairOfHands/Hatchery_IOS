//
//  MainView.swift
//  Hatchery_iOS
//
//  Created by Garrett Roberts on 4/14/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "homekit")
                }
            SearchView(name:"Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            ContentView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
