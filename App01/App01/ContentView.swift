//
//  ContentView.swift
//  App01
//
//  Created by user163222 on 11/25/19.
//  Copyright © 2019 user163222. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0.0){
            Text("U")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text("Funding")
                .font(.largeTitle)
                    
            }.padding()
            Text("Online Fundraising Made First")
            HStack(spacing: 20) {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    }
                .padding()
                .background(Color.black)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Login")
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                }
                .padding()
                .background(Color.white)
                .border(Color.black)
                Spacer()
            }.padding([.top, .leading, .trailing],30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
