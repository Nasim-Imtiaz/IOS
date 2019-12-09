//
//  WelcomeView.swift
//  IOS01
//
//  Created by Nasim Imtiaz on 12/4/19.
//  Copyright © 2019 Nasim Imtiaz. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Text("Hello, World!")
        }.navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
