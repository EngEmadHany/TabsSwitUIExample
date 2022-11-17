//
//  Demo4View.swift
//  TabsSwiftUIExample
//
//  Created by Emad Hany Isaac on 17/11/2022.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        ZStack{
            Color.black
            Text("hello 4")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
        }
}

struct Demo4View_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
