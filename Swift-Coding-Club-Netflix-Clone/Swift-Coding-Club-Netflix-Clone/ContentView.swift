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
                        Image("es")
                            .resizable()
                            .scaledToFill()
                        
                        VStack {
                            Spacer()
                            
                            Group {
                                Text("N 시리즈")
                                Text("다 머")
                                Text("괴물: 제프리 다머 이야기")
                                Text("불길한, 심리, 공포, 한 시대를 담은 범죄극")
                            }
                            .foregroundColor(.white)
                            
                            HStack {
                                Spacer()
                                
                                Button {
                                    print("내가 찜한 콘텐츠")
                                } label: {
                                    VStack {
                                        Image(systemName: "plus")
                                        Text("내가 찜한 콘텐츠")
                                    }
                                }
                                
                                Spacer()
                                
                                Button {
                                    print("재생")
                                } label: {
                                    HStack {
                                        Image(systemName: "play.fill")
                                        Text("재생")
                                    }
                                }
                                
                                Spacer()
                                
                                Button {
                                    print("정보")
                                } label: {
                                    VStack {
                                        Image(systemName: "info.circle")
                                        Text("정보")
                                    }
                                }
                                
                                Spacer()
                            }
                        }
                        
                        VStack {
                            HStack {
                                Image(systemName: "n.square")
                                
                                Spacer()
                                
                                Button {
                                    print("airplay")
                                } label: {
                                    Image(systemName: "airplayvideo")
                                        .foregroundColor(.white)
                                }

                                Button {
                                    print("search")
                                } label: {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.white)
                                }
                                
                                Button {
                                    print("search")
                                } label: {
                                    Image(systemName: "person.circle")
                                }
                                
                            }
                            Spacer()
                        }
                        
                    }
                    
                    LazyVStack(alignment: .leading) {
                        Text("시리즈")
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
                        
                        Text("영화")
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
                        
                        Text("애니메이션")
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
