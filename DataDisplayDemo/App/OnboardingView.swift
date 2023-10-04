//
//  OnboardingView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-04.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        TabView {
            ForEach(0..<5) { _ in
                FruitCardView()
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
