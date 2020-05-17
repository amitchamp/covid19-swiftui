//
//  ContentView.swift
//  Covid19
//
//  Created by Sumit on 14/05/20.
//  Copyright © 2020 Tutorials. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            HomepageScreenView()
                .tabItem ({
                    Image(systemName: "house")
                    Text("Home")
                })
            
            StatisticsScreenView()
                .tabItem ({
                    Image(systemName: "book")
                    Text("Statistics")
                })
            
            CountryListScreenView()
                .tabItem ({
                    Image(systemName: "globe")
                    Text("Summary")
                })
        }
        .accentColor(Color("LightViolet"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
