//
//  SettingsViewRow.swift
//  DataDisplayDemo
//
//  Created by Victor Ulloa on 2023-10-05.
//

import SwiftUI

struct SettingsViewRow: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack() {
                Text(name).foregroundStyle(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if
                    let linkLabel = linkLabel,
                    let linkDestination = linkDestination,
                    let url =  URL(string: "https://\(linkDestination)") {
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundStyle(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsViewRow(name: "Developer", content: "Victor Ulloa")
        .padding()
    
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    SettingsViewRow(name: "Website", linkLabel: "SwiftUI Materlass", linkDestination: "swiftuimasterclass.com")
        .padding()
}
