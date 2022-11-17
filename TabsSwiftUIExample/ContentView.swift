//
//  ContentView.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0

    let tabs: [Tab] = [
        .init(title: "Trending"),
        .init(title: "Gainers"),
        .init(title: "Losers"),
        .init(title: "New"),
        .init(title: "Favorite")
    ]

    

    var body: some View {
        
            GeometryReader { geo in
                VStack(spacing: 0) {
                    // Tabs
                    Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)

                    // Views
                    TabView(selection: $selectedTab,
                            content: {
                                TrendingView()
                                    .tag(0)
                                GainersView()
                                    .tag(1)
                                LosersView()
                                    .tag(2)
                                NewView()
                                    .tag(3)
                                FavoriteView()
                                    .tag(4)
                            })
                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                .foregroundColor(Color.black)
                
               
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
