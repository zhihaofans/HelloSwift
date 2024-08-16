//
//  ListView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/16.
//

import SwiftUI

struct ListItemData: Identifiable {
    var title: String
    var view: () -> any View
    var id: String
}

struct ListView: View {
    private let viewTitle = "列表"
    @State var listViewData = [
        ListItemData(title: "单一文本列表", view: { AnyView(EmptyView()) }),
        ListItemData(title: "单一文本列表", view: { AnyView(EmptyView()) }),
        ListItemData(title: "单一文本列表", view: { AnyView(EmptyView()) })
    ]
    var body: some View {
        NavigationView {
            // List {
            //    NavigationLink("列表", destination: ListView())
            // }
            List(listViewData) { item in
                NavigationLink(destination: item.view()) {
                    Text(item.title)
                }
            }
            .navigationTitle(viewTitle)
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
}

// #Preview {
//    ListView()
// }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
