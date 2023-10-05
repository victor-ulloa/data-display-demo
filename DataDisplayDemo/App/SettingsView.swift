//
//  SwiftUIView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-05.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.isPresented) var isPresented
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                })
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
}
