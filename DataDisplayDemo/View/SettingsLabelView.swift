//
//  SettingsLabelView.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-05.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}
