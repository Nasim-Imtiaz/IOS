//
//  SIgnupView.swift
//  IOS01
//
//  Created by Nasim Imtiaz on 12/5/19.
//  Copyright © 2019 Nasim Imtiaz. All rights reserved.
//

import SwiftUI
import Firebase

struct SIgnupView: View {
    @State var f_Name:String=""
    @State var l_Name:String=""
    @State var e_Mail:String=""
    @State var Password:String=""
    
    @State var isActive:Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("Login")
                TextField("Enter First Name",text: $f_Name).border(Color.black)
                    .padding()
                TextField("Enter Last Name",text: $l_Name).border(Color.black).padding()
                TextField("Enter Mail",text: $e_Mail).border(Color.black).padding()
                TextField("Enter Password",text: $Password).border(Color.black).padding()
                
                NavigationLink(destination: WelcomeView(), isActive: self.$isActive){
                    Text("")
                }
                Button("SignUp"){
                    Auth.auth().createUser(withEmail: self.e_Mail, password: self.Password);
                    self.isActive = true
                }
            }
        }
        
    }
}

struct SIgnupView_Previews: PreviewProvider {
    static var previews: some View {
        SIgnupView()
    }
}
