//
//  File.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct TextFieldModifier : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,22)
    }
}
