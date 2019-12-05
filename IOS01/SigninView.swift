//
//  SigninView.swift
//  IOS01
//
//  Created by Nasim Imtiaz on 12/5/19.
//  Copyright © 2019 Nasim Imtiaz. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    
    @State var user : String = ""
    @State var pass : String = ""
    @State var repass : String = ""
    
    var body : some View{
        
        
        ZStack{
            
            LinearGradient(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center, spacing: 22, content: {
                     
                     Image("yourLogo").resizable().frame(width: 80, height: 80).padding(.bottom, 15)
                     
                     HStack{
                         
                         Image(systemName: "person.fill").resizable().frame(width: 20, height: 20)
                         
                         TextField("Username", text: $user).padding(.leading, 12).font(.system(size: 20))
                         
                     }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     
                     HStack{
                         
                         Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                         
                         SecureField("Password", text: $repass).padding(.leading, 12).font(.system(size: 20))
                         
                     }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     
                     HStack{
                         
                         Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                         
                         SecureField("Re-Password", text: $pass).padding(.leading, 12).font(.system(size: 20))
                         
                     }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     
                     Button(action: {
                         
                         print("hi")
                         
                     }) {
                         
                         Text("SignUp").foregroundColor(.white).padding().frame(width: 150)
                         
                     }
                     .background(LinearGradient(gradient: .init(colors: [Color("1"),Color("2")]), startPoint: .leading, endPoint: .trailing))
                     .cornerRadius(20)
                     .shadow(radius: 25)
                     
                     
                 })
                 .padding(.horizontal, 18)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Image("l3")
        .resizable()
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .center)
        
        //.scaledToFill()
        //.blur(radius: 1)
        .edgesIgnoringSafeArea([.top,.bottom]))
        
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}
