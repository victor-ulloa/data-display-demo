//
//  StartButtonView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-04.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }, label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }) //: BUTTON
        .tint(.white)
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    StartButtonView()
}
