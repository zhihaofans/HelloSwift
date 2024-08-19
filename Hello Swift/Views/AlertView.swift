//
//  AlertView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/19.
//

import SwiftUI

struct AlertView: View {
    var body: some View {
        List {
            NavigationLink("标题+文本", destination: AlertTextView())
        }
        .navigationTitle("弹窗Alert")
    }
}

struct AlertTextView: View {
    @State var title: String=""
    @State var message: String=""
    @State var isShow: Bool=false
    var body: some View {
        VStack {
            List {
                TextField("Title", text: $title)
                TextField("Message", text: $message)
                Button("Show") {
                    isShow=true
                }.buttonStyle(.borderedProminent)
            }
        }
        .alert(title, isPresented: $isShow) {
            Button("OK", action: {
                isShow=false
            })
        } message: {
            Text(message)
        }
    }
}

#Preview {
    AlertView()
}
