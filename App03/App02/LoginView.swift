//
//  LoginView.swift
//  App02
//
//  Created by user163222 on 11/25/19.
//  Copyright © 2019 user163222. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
      NavigationView {
        VStack{
            
            HStack(alignment: .top){
                Text("Email:").padding()
                TextField("Enter Your Mail", text: $email).padding()
          }
            
          HStack{
            Text("Password:").padding()
            TextField("Enter Your Password", text: $password).padding()
          }
                Button(action:{print(self.$email)}){
                    Text("Login")
                    padding()
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
            
        }
            
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

