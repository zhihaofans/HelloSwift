//
//  MainView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/19.
//

import SwiftUI
import SwiftUtils

struct MainView: View {
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
        NavigationView {
            List {
                Section("界面UI") {
                    NavigationLink("列表List", destination: ListView())
                    NavigationLink("弹窗Alert", destination: AlertView())
                    NavigationLink("图片Image", destination: ImageView())
                    Text("学习中")
                }
                Section("功能API") {
                    NavigationLink("剪贴板", destination: ListView())
                    Text("学习中")
                }
            }
            .navigationTitle(AppUtil().getAppName())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EmptyView()) {
                        // TODO: 这里跳转到个人页面或登录界面
                        Image(systemName: "person")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

struct EmptyView: View {
    @State var image: UIImage?
    var body: some View {
        VStack {
            if image != nil {
                Image(uiImage: image!)
                    .resizable() // 允许图片可调整大小
                    .scaledToFit() // 图片将等比缩放以适应框架
                    .frame(width: 120, height: 120) // 设置视图框架的大小
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)) // 设置圆角矩形形状
                    .shadow(radius: 5) // 添加阴影以增强效果
            } else {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            Text(AppUtil().getAppName())
        }
        .onAppear {
            if let appIcon = AppUtil().getAppIconImage() {
                image = appIcon
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
