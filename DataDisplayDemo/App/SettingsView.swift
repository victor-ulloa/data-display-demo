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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the applicaton by toddling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text((isOnboarding ? "Restart" : "Restarted").uppercased())
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        SettingsViewRow(name: "Developer", content: "Victor Ulloa")
                        SettingsViewRow(name: "Designer", content: "Victor Ulloa")
                        SettingsViewRow(name: "Compatibility", content: "iOS 14+")
                        SettingsViewRow(name: "Website", linkLabel: "SwiftUI Materlass", linkDestination: "swiftuimasterclass.com")
                        SettingsViewRow(name: "SwiftUI", content: "5.0")
                        SettingsViewRow(name: "Version", content: "1.1.0")
                    }
                    
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
