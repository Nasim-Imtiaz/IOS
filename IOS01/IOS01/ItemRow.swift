//
//  ItemRow.swift
//  App02
//
//  Created by user163222 on 11/25/19.
//  Copyright © 2019 user163222. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    var body: some View {
        VStack(alignment: .leading){
            Image(item.picture)
                .resizable()
                .frame(height:350)
            Text(item.title)
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(3)
            Text("by \(item.name)")
                .font(.headline)
            HStack{
                Spacer()
                Text("\(item.price)")
                .font(.system(size: 35))
                .foregroundColor(Color.red)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
