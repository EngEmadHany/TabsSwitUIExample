//
//  Demo1View.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct TrendingView: View {
    var body: some View {
        ZStack {
            Color.black
            Text("Music View")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
    }
}

struct Demo1View_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
