//
//  LoginPage.swift
//  Machine Test
//
//  Created by narayan sharma on 25/06/22.
//

import SwiftUI

struct LoginPage: View {
    @AppStorage("isOnBoarding") var change: Bool = false
    @State private var username: String = ""
    @State private var password: String = ""
    @EnvironmentObject var signUpVM: SignUpViewModel
    var body: some View {
        VStack(alignment: .center, spacing: 40){
            Text("Welcome Back!")
                .padding()
                .font(.system(size: 30))
            VStack(alignment: .center, spacing: 8) {
                HStack(spacing: 300) {
                    Text("Login with")
                        .padding()
                    Text(" ")
                }
                LoginItemGroupView()
            }
            HStack(spacing: 350){
                Text("or")
                    .padding()
                Text("  ")
            }
            VStack(alignment: .leading, spacing: 20) {
                GroupBox {
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 350, height: 30)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                }
                GroupBox {
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 350, height: 30)
                }
            }
            Button {
                change = true
            } label: {
                Text("Login")
                    .padding()
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .background(
                        Color("Login")
                            .frame(width: 380, height: 60)
                    )
            }
            HStack(spacing: 8){
                Text("Need an account?")
                    .padding()
                    .font(.system(size: 20))
                Button {
                    
                } label: {
                    Text("Sign up")
                        .foregroundColor(Color("hyperLink"))
                }
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
