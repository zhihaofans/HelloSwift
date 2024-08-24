//
//  ContentView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/15.
//

import SwiftUI
import SwiftUtils

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        ContentIOSView()
        #else
        Text("Hello Swift")
        #endif
    }
}

struct ContentIOSView: View {
    @State private var selectedTab = 0
    var body: some View {
        switch selectedTab {
        case 2:
            SettingView()
        default:
            MainView()
        }
        TabView(selection: $selectedTab) {
            Text("")
                .tabItem {
                    Label("主页", systemImage: "house")
                }
                .tag(0)

            Text("")
                .fixedSize(horizontal: false, vertical: true) // 纵向固定大小
                .tabItem {
                    Label("动态", systemImage: "fanblades")
                }
                .tag(1)

            Text("")
                .fixedSize(horizontal: false, vertical: true) // 纵向固定大小
                .tabItem {
                    Label("更多", systemImage: "ellipsis")
                }
                .tag(2)
        }
        .frame(maxHeight: 50) // 限制最大高度
    }
}

#Preview {
    ContentView()
}
