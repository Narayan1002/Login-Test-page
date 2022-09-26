//
//  ContentView.swift
//  Machine Test
//
//  Created by narayan sharma on 24/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10){
                        GroupBox {
                            VStack(spacing: 15){
                                HStack(spacing: 190){
                                    Text("MINI BASKETS")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.red)
                                        .underline()
                                    Text("(1 Product)")
                                        .font(.system(size: 12))
                                }
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack(spacing: 15){
                                        GroupBox {
                                            VStack(spacing: 3){
                                                Image("apple")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 90, height: 90, alignment: .center)
                                                HStack(spacing: 2){
                                                    Image(systemName: "indianrupeesign.circle")
                                                        .resizable()
                                                        .foregroundColor(Color.black)
                                                        .frame(width: 15, height: 20)
                                                    Text("159")
                                                }
                                                Text("Kinnaur Apple")
                                                    .font(.system(size: 15))
                                                Text("1 pc")
                                                    .font(.system(size: 10))
                                            }
                                        }
                                        GroupBox{
                                            VStack(spacing: 3){
                                                Image("watermelon")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 90, height: 90, alignment: .center)
                                                HStack(spacing: 2){
                                                    Image(systemName: "indianrupeesign.circle")
                                                        .resizable()
                                                        .foregroundColor(Color.black)
                                                        .frame(width: 15, height: 20)
                                                    Text("110")
                                                }
                                                Text("Water Melon")
                                                    .font(.system(size: 15))
                                                Text("1 pc")
                                                    .font(.system(size: 10))
                                            }
                                        }
                                        GroupBox{
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
                                }
                                HStack(spacing: 60){
                                    HStack {
                                        Image(systemName: "indianrupeesign.circle")
                                            .foregroundColor(Color.red)
                                        Text("349")
                                            .foregroundColor(Color.red)
                                    }
                                    HStack {
                                        Button(action: { }) {
                                            Text("Delete Cart").padding()
                                        }
                                        .background(Color.red)
                                        .foregroundColor(Color.white)
                                        Button(action: { }) {
                                            Text("Checkout").padding()
                                        }
                                        .background(Color.red)
                                        .foregroundColor(Color.white)
                                    }
                                    
                                }
                            }
                        }
                        GroupBox {
                            VStack(spacing: 15){
                                HStack(spacing: 190){
                                    Text("Designer Hub")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.red)
                                        .underline()
                                    Text("(1 Product)")
                                        .font(.system(size: 12))
                                }
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack(spacing: 15){
                                        GroupBox {
                                            VStack(spacing: 3){
                                                Image("kurti")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 90, height: 90, alignment: .center)
                                                HStack(spacing: 2){
                                                    Image(systemName: "indianrupeesign.circle")
                                                        .resizable()
                                                        .foregroundColor(Color.black)
                                                        .frame(width: 15, height: 20)
                                                    Text("400")
                                                }
                                                Text("Kurtis")
                                                    .font(.system(size: 15))
                                                Text("6 pc")
                                                    .font(.system(size: 10))
                                            }
                                        }
                                    }
                                }
                                HStack(spacing: 60){
                                    HStack {
                                        Image(systemName: "indianrupeesign.circle")
                                            .foregroundColor(Color.red)
                                        Text("400")
                                            .foregroundColor(Color.red)
                                    }
                                    HStack {
                                        Button(action: { }) {
                                            Text("Delete Cart").padding()
                                        }
                                        .background(Color.red)
                                        .foregroundColor(Color.white)
                                        Button(action: { }) {
                                            Text("Checkout").padding()
                                        }
                                        .background(Color.red)
                                        .foregroundColor(Color.white)
                                    }
                                    
                                }
                            }
                        }
                    }
                .navigationBarTitle(Text("Cart"), displayMode: .inline)
                .navigationBarItems(leading: Image(systemName: "arrow.left")
                    .font(.system(size: 20)), trailing: Image(systemName: "house.fill")
                    .font(.system(size: 30))
                .foregroundStyle(Color.red))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
