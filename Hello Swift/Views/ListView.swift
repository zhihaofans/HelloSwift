//
//  ListView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/16.
//

import SwiftUI

struct ListView: View {
    private let viewTitle = "列表"
    @State var listViewData = []
    var body: some View {
        NavigationView {
            //List {
            //    NavigationLink("列表", destination: ListView())
            //}
            List(listViewData) { it in
                NavigationLink(it.title, destination: it.view)
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
        }.onAppear{
            listViewData =[
                ListItemData(title:"单一文本列表",view:EmptyView()),
                ListItemData(title:"单一文本列表",view:EmptyView()),
                ListItemData(title:"单一文本列表",view:EmptyView())
            ]
        }
    }
}
class ListItemData{
    var title: String
    var view: View
    var uuid: String
    init(title: String,view: View){
        self.title = title
        self.view = view
        self.uuid = UUID()
    }
}
#Preview {
    ListView()
}
