//
//  Tabs.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/30/20.
//

import SwiftUI

struct Tab {
    var title: String
}

struct Tabs: View {
    var fixed = true
    var tabs: [Tab]
    var geoWidth: CGFloat
    @Binding var selectedTab: Int

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { proxy in
                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        ForEach(0 ..< tabs.count, id: \.self) { row in
                            Button(action: {
                                withAnimation {
                                    selectedTab = row
                                }
                            }, label: {
                                VStack(spacing: 0) {
                                    HStack(spacing: 25) {
                                        // Text
                                        Text(tabs[row].title)
                                            .font(Font.system(size: 14, weight: .semibold))
                                            .foregroundColor(Color.white)

                                    }
                                    .frame(width: fixed ? (geoWidth / CGFloat(tabs.count)) : .none, height: 40)
                                    // Bar Indicator
                                    Rectangle().fill(selectedTab == row ? Color.red : Color.clear)
                                        .frame(width: 65, height: 3)
                                }.fixedSize()
                            })
                                .accentColor(Color.white)
                                .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .onChange(of: selectedTab) { target in
                        withAnimation {
                            proxy.scrollTo(target)
                        }
                    }
                }
            }
        }
        .frame(height: 55)
        .onAppear(perform: {
            UIScrollView.appearance().backgroundColor = .init(Color.black)
            UIScrollView.appearance().bounces = fixed ? false : true
        })
        .onDisappear(perform: {
            UIScrollView.appearance().bounces = true
        })
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs(fixed: true,
             tabs: [.init(title: "Trending"),
                    .init(title: "Gainers"),
                    .init(title: "Losers"),
                    .init(title: "New"),
                    .init(title: "Favorite")
             
             ],
             geoWidth: 375,
             selectedTab: .constant(0))
    }
}
