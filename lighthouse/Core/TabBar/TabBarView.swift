//
//  TabView.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
            Tab("Home", systemImage: "house", value: 0) {
                FeedView()
            }

            Tab("Search", systemImage: "magnifyingglass", value: 1) {
                Text("Search")
            }

            Tab("Add", systemImage: "plus", value: 2) {
                Text("Add post")
            }
            
            Tab("account", systemImage: "person", value: 3) {
                AccountTabView()
            }
            
        }
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}
