//
//  ContentView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-04.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
                }
            }
            .listStyle(.plain)
            .padding(.vertical, 4)
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
