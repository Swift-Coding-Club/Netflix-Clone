//
//  ContentView.swift
//  Swift-Coding-Club-Netflix-Clone
//
//  Created by gaeng on 2022/09/03.
//

import SwiftUI

enum MenuIndex: Int {
    case home = 0
    case newAndHot
    case downloadContentsList
}


struct MainTabView: View {
    @State private var selection = 0 {
        didSet {
            print("\(selection)")
        }
    }
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    selection == MenuIndex.home.rawValue ? Image(systemName: "house.fill") : Image(systemName: "house")
//                    setTabItemImage(index: .home)
                    Text("홈")
                }
                .tag(MenuIndex.home.rawValue)
            
            Text("New & Hot")
                .tabItem {
                    setTabItemImage(index: .newAndHot)
                    Text("New & Hot")
                }
                .tag(MenuIndex.newAndHot.rawValue)
            
            Text("저장한 콘텐츠 목록")
                .tabItem {
                    setTabItemImage(index: .downloadContentsList)
                    Text("저장한 콘텐츠 목록")
                }
                .tag(MenuIndex.downloadContentsList.rawValue)
        }
    }
    
    private func setTabItemImage(index: MenuIndex) -> Image {
        switch index {
        case .home:
            return selection == index.rawValue ? Image(systemName: "house.fill") : Image(systemName: "house")
        case .newAndHot:
            return selection == index.rawValue ? Image(systemName: "flame.fill") : Image(systemName: "flame")
        case .downloadContentsList:
            return selection == index.rawValue ? Image(systemName: "arrow.down.circle.fill") : Image(systemName: "arrow.down.circle")
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
