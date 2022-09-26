//
//  ContentView.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            //: main vstack
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack {
                        HomeHeaderView()
                    }
                    
                    VStack(alignment: .leading) {
                        HomeHorizontalView(title: "시리즈")
                        HomeHorizontalView(title: "내가 찜한 콘텐츠")   
                        HomeHorizontalView(title: "지금 뜨는 콘텐츠")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
