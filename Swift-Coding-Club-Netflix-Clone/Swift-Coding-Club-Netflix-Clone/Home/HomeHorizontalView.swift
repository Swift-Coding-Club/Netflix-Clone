//
//  HomeHorizontalView.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/24.
//

import SwiftUI

struct HomeHorizontalView: View {
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundColor(.white)
                .padding(.leading, 8)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<10) { _ in
                        Image("es")
                            .resizable()
                            .frame(width: 100, height: 180)
                    }
                    
                }
            }
        }
    }
}

struct HomeHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHorizontalView(title: "영화")
    }
}
