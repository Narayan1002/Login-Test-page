//
//  MainView.swift
//  Machine Test
//
//  Created by narayan sharma on 24/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Saved")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "bell")
                    Text("Notification")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Profile")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Cart")
                }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
