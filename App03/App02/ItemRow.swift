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
        VStack{
            Image(item.thumbnailImage)
                .resizable()
                .padding()
                .frame(height:250)
            Text(item.name).font(.largeTitle).padding()
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item:MenuItem.example)
    }
}
