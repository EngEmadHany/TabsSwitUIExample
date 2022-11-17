//
//  Demo5View.swift
//  TabsSwiftUIExample
//
//  Created by Emad Hany Isaac on 17/11/2022.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ZStack{
            Color.black
            Text("hello 5")
                .foregroundColor(.white)
                .font(Font.system(size: 25, weight: .bold))
        }
    }
}

struct Demo5View_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
