//
//  Menu.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct MenuSection: Codable, Identifiable{
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var title: String
    var price: Int
    var picture: String
    var restrictions: [String]
    var description: String
    
    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "Noel Valade",title: "Help Noel Get a Powerchair!",price: 2300,picture:"nv",restrictions: ["G", "V"],description: "I'm a poor, disabled student in my last year of undergrad in Social Work. I have chronic pain which greatly impacts my mobility & ability to go to school and work. A powerchair would greatly help me be able to do this!")
    #endif
}
