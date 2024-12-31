//
//  AccountTabView.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct AccountTabView: View {
    var body: some View {
        NavigationStack{
            Image(systemName: "person.fill")
                .font(.system(size: 200))
            NavigationLink(
                destination: LoginView()
                    .navigationBarBackButtonHidden(true)){
                HStack{
                    Text("You're Not logged in")
                    Text("Login Now")
                        .fontWeight(.semibold)
                }.foregroundStyle(.black)
            }
        }

    }
}

#Preview {
    AccountTabView()
}
