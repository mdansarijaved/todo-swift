//
//  ButtonModifier.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 355, height: 44)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(8)
            .padding(.vertical,20)

    }
}
