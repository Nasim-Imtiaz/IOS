//
//  MenuView.swift
//  App02
//
//  Created by user163222 on 11/25/19.
//  Copyright © 2019 user163222. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    let menu = Bundle.main.decode([MenuSection].self,from:"menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu) { section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){
                            item in
                            ItemRow(item: item)
                        }
                    }
                }
            }.navigationBarTitle("Home")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
