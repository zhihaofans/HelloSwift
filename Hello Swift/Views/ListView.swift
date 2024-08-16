//
//  ListView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/16.
//

import SwiftUI

struct ListView: View {
    private let viewTitle = "列表"
    @State var listView = []
    var body: some View {
        NavigationView {
            List {
                NavigationLink("列表", destination: ListView())
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
class ListItemData{
    var title: String
    var view: View
    init(title: String,view: View){
        self.title = title
        self.view = view
    }
}
#Preview {
    ListView()
}
