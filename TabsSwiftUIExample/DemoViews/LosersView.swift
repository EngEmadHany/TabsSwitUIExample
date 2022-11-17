//
//  Demo3View.swift
//  TabsSwiftUIExample
//
//  Created by John Codeos on 11/7/20.
//

import SwiftUI

struct LosersView: View {
    var body: some View {
        ZStack {
            Color.black
            Text("Books View")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
    }
}

struct Demo3View_Previews: PreviewProvider {
    static var previews: some View {
        LosersView()
    }
}
