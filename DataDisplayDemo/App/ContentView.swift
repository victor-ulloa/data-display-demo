//
//  ContentView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                }
            }
            .listStyle(.plain)
            .padding(.vertical, 4)
            .navigationTitle("Fruits")
            .toolbar(content: {
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            })
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
