//
//  ImageView.swift
//  Hello Swift
//
//  Created by zzh on 2024/8/20.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        List {
            Menu("Copy") {
                Button("Copy", action: {})
                Button("Copy Formatted", action: {})
                Button("Copy Library Path", action: {})
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ImageView()
}
