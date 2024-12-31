//
//  LoginView.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack{
            Spacer()
            VStack{
                Image("lighthouselogo")
                    .resizable()
                    .frame(width: 300, height: 100)
                    .padding()
                VStack{
                    TextField("Enter you email",text: $email)
                        .autocapitalization(.none)
                        .modifier(TextFieldModifier())
                    SecureField("Password", text: $password)
                        .modifier(TextFieldModifier())
                    Button{
                        
                    }label: {
                        Text("Login")
                            .modifier(ButtonModifier())
                    }
                }
                
            }
            Spacer()
            Divider()
            NavigationLink(
                destination: SignupView()
                    .navigationBarBackButtonHidden(true)
            ) {
                HStack(spacing: 3){
                    Text("Don't have an account?")
                    Text("signUp")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
