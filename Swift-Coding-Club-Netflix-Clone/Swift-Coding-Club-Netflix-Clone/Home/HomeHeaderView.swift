//
//  HomeHeaderView.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/26.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
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
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
