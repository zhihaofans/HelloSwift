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
    var body: some View {
        List {
            Section(header: Text("纯文本")) {
                NavigationLink("单一文本列表", destination: SimpleTextView())
                NavigationLink("单一文本列表", destination: SimpleTextView())
            }
        }
        .navigationTitle(viewTitle)
    }
}

struct SimpleTextView: View {
    private let viewTitle = "单一文本列表"
    @State var itemList = [
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
        SimpleTextItem(title: "14321313", detail: "dasdasdasd23123"),
    ]
    var body: some View {
        List {
            ForEach(itemList, id: \.title) { it in
                SimpleTextItemView(title: it.title, detail: it.detail)
            }
        }
        .navigationTitle(viewTitle)
    }
}

struct SimpleTextItem: Identifiable {
    let id = UUID()
    let title: String
    let detail: String
}



#Preview {
    ListView()
}
