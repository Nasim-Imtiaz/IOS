//
//  SigninView.swift
//  IOS01
//
//  Created by Nasim Imtiaz on 12/5/19.
//  Copyright © 2019 Nasim Imtiaz. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    
    @State var f_Name:String=""
       @State var l_Name:String=""
       @State var e_Mail:String=""
       @State var Password:String=""
       
       @State var width: CGFloat? = nil
       
       @State var isActive:Bool = false
       @State var isSignnedup:Bool = false
       
       
       var body: some View {
           
           NavigationView{
               VStack{
                   NavigationLink(destination: WelcomeView(), isActive: self.$isSignnedup){
                       EmptyView()
                       .navigationBarTitle("")
                       .navigationBarHidden(true)
                   }
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
                   
                   HStack(spacing: 0){
                       Text("Email:").padding([.top,.leading,.bottom])
                           .frame(width: 115, alignment: .leading)
                       TextField("Enter Mail", text: $e_Mail).padding([.top,.bottom])
                   }.background(Color.white)
                   .cornerRadius(20)
                    .padding([.trailing,.leading,.top])
                   
                   HStack(spacing: 0){
                       Text("Password:").padding([.top,.leading,.bottom])
                           .frame(width: 115, alignment: .leading)
                       TextField("Enter Password", text: $Password).padding([.top,.bottom])
                   }.background(Color.white)
                       .cornerRadius(20)
                       .padding([.trailing,.leading])
                   
                   HStack{
                       Button(action: {self.isActive = true}){
                           Text("Confirm")
                               .font(.headline)
                               .foregroundColor(Color.white)
                       }
                       .padding()
                       .background(Color.red)
                       .alert(isPresented: $isActive) {
                           Alert(title: Text("Title"), message: Text("Message..."),
                               primaryButton: .default (Text("OK")) {
                                   self.isSignnedup.toggle()
                               
                               },
                               secondaryButton: .cancel()
                           )
                           
                       }
                       .navigationBarHidden(true)
                   }.cornerRadius(20)
                   .padding()
                   
               }
               .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
               .background(Image("l3")
               .resizable()
               .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .center))
               .edgesIgnoringSafeArea([.top,.bottom])
               .navigationBarTitle("")
               .navigationBarBackButtonHidden(true)
               .navigationBarHidden(true)
           }
       }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
