//
//  MiniCardView.swift
//  Machine Test
//
//  Created by narayan sharma on 24/06/22.
//

import SwiftUI

struct MiniCardView: View {
    var body: some View {
        VStack(spacing: 3){
            Image("black-grapes")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90, alignment: .center)
            HStack(spacing: 2){
                Image(systemName: "indianrupeesign.circle")
                    .resizable()
                    .foregroundColor(Color.black)
                    .frame(width: 15, height: 20)
                Text("80")
            }
            Text("Black Grapes")
                .font(.system(size: 15))
            Text("1 Kg")
                .font(.system(size: 10))
        }
    }
}

struct MiniCardView_Previews: PreviewProvider {
    static var previews: some View {
        MiniCardView()
            .previewLayout(.fixed(width: 100, height: 150))
    }
}
