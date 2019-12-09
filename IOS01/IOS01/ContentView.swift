//
//  ContentView.swift
//  IOS01
//
//  Created by Nasim Imtiaz on 12/3/19.
//  Copyright © 2019 Nasim Imtiaz. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @State var isSignup:Bool = false
    @State var isSignin:Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("U")
                    .font(.system(size:50))
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                +
                Text("Funding")
                    .font(.system(size:50))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("One of the largest community")
                    .foregroundColor(Color.gray)
                Spacer()
                
                NavigationLink(destination: SigninView(), isActive: self.$isSignin){
                    EmptyView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
                Button(action: {
                    self.isSignin = true
                }) {
                    Text("Sign In")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .border(Color.white, width: 2)
                }.padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                NavigationLink(destination: SIgnupView(), isActive: self.$isSignup){
                    EmptyView()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
                Button(action: {
                    self.isSignup = true
                }) {
                    Text("Sign Up")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .border(Color.white, width: 2)
                }.padding(.leading)
                .padding(.trailing)
                .padding(.bottom,50)
            }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Image("l3")
        .resizable()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .center)
        .edgesIgnoringSafeArea([.top,.bottom]))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
