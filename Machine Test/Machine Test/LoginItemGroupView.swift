//
//  LoginItemGroupView.swift
//  Machine Test
//
//  Created by narayan sharma on 25/06/22.
//

import SwiftUI

struct LoginItemGroupView: View {
    @EnvironmentObject var signUpVM: SignUpViewModel
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            GroupBox {
                Button {
                    
                } label: {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                }
            }
            
            GroupBox {
                Button {
                    signUpVM.signUpWithGoogle()
                } label: {
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                }
            }
            
            GroupBox {
                Button {
                    
                } label: {
                    Image("apple-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                }
            }
        }
    }
}

struct LoginItemGroupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginItemGroupView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
