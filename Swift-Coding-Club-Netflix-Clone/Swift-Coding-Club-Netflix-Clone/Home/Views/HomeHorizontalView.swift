//
//  HomeHorizontalView.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/24.
//

import SwiftUI

struct HomeHorizontalView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 5)
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(viewModel.movies ?? []) { movie in
                        AsyncImage(url: URL(string: Const.imageUrl + movie.posterPath!)) { image in
                            image.resizable()
                        } placeholder: {
                            Rectangle()
                                .frame(width: 120, height: 180, alignment: .center)
                        }
                        .frame(width: 120, height: 180, alignment: .center)
                    }
                    
                }
            }
        }
        .onAppear { self.viewModel.getTrandigMovies() }
    }
}

struct HomeHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHorizontalView(title: "영화")
    }
}
