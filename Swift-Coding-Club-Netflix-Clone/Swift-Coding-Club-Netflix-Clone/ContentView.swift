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
