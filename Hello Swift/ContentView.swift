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
        iosMainView()
        #else
        EmptyView()
        #endif
    }
}

struct iosMainView: View {
    @State private var selectedTab = 0
    var body: some View {
        switch selectedTab {
        default:
            NavigationView {
                List {
                    NavigationLink("列表", destination: ListView())
                }
                .navigationTitle(AppUtil().getAppName() /* "哔了个哩" */ )
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: EmptyView()) {
                            // TODO: 这里跳转到个人页面或登录界面
                            Image(systemName: "person")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: EmptyView()) {
                            Image(systemName: "gear")
                        }
                    }
                }
            }
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

struct EmptyView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
