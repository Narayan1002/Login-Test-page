//
//  LoginVM.swift
//  Machine Test
//
//  Created by narayan sharma on 25/06/22.
//

import SwiftUI
import Firebase
import GoogleSignIn

class SignUpViewModel: ObservableObject {
    @Published var isLogin: Bool = false

    func signUpWithGoogle() {
        guard let clientId = FirebaseApp.app()?.options.clientID else { return }
        let config = GIDConfiguration(clientID: clientId)

        GIDSignIn.sharedInstance.signIn(with: config, presenting: ApplicationUtility.rootViewController){
            [self] user, err in

            if let error = err {
                print(error)
                return
            }

            guard
                let authentication = user?.authentication,
                let idToken = authentication.idToken
            else {
                return
            }

            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)

            Auth.auth().signIn(with: credential) { [self] Result, Error in
                if let error = Error{
                    print(error)
                    return
                }
                guard let user = Result?.user else { return }
                print(user.displayName!)
                isLogin.toggle()
            }
        }
    }
}
