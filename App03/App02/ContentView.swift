//
//  ContentView.swift
//  App02
//
//  Created by user163222 on 11/25/19.
//  Copyright © 2019 user163222. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack(spacing: 0.0){
                    Text("U")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    Text("Funding")
                        .font(.largeTitle)
                }.padding()
                
                Text("Online Fundraising Made First")
                
                HStack(spacing: 20){
                    NavigationLink(destination: SignupView()){
                         Text("Sign Up")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                    }
                    NavigationLink(destination: LoginView()){
                         Text("Login")
                         .foregroundColor(.black)
                         .frame(maxWidth: .infinity)
                         .padding()
                         .background(Color.white)
                         .border(Color.black)
                    }
                }.padding([.top, .leading, .trailing, .bottom],30)
                
                NavigationLink(destination: MenuView()){
                    Text("Explore >")
                }
            }
            .navigationBarHidden(true)
        }.statusBar(hidden:true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
