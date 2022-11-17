//
//  Demo2View.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct GainersView: View {
    var body: some View {
        ZStack {
            Color.black
            Text("Movies View")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
    }
}

struct Demo2View_Previews: PreviewProvider {
    static var previews: some View {
        GainersView()
    }
}
