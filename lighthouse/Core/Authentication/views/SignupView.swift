//
//  SignupView.swift
//  lighthouse
//
//  Created by Javed on 25/12/24.
//

import SwiftUI

struct SignupView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
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
                    TextField("Enter you username",text: $name)
                        .modifier(TextFieldModifier())

                    SecureField("Password", text: $password)
                        .modifier(TextFieldModifier())
                    Button{
                        
                    }label: {
                        Text("Sign Up")
                            .modifier(ButtonModifier())
                    }
                }
                
            }
            Spacer()
            Divider()
        Button{
            dismiss()
        }label: {
            HStack(spacing: 3){
                Text("Already have an account?")
                Text("Login")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .font(.footnote)
            .padding(.vertical, 16)
        }
        
    }
}

#Preview {
    SignupView()
}
