//
//  Theme.swift
//  Memorize
//
//  Created by Nicholas Ong on 14/6/21.
//

import SwiftUI

struct Theme {
    var name: String
    var emojis: [String]
    var color: Color
      var accentColor: Color // For Extra Credit 1
    var noOfPairs: Int?
}

let themes: [Theme] = [
    Theme(
        name: "Halloween",
        emojis: ["👻","🎃","🕷","🧟‍♂️","🧛🏼‍♀️","☠️","👽","🦹‍♀️","🦇","🌘","⚰️","🔮"],
        color: .orange,
            accentColor: .red),
                 // No number of pairs for first theme as per requirements
    Theme(
        name: "Flags",
        emojis: ["🇸🇬","🇯🇵","🏴‍☠️","🏳️‍🌈","🇬🇧","🇹🇼","🇺🇸","🇦🇶","🇰🇵","🇭🇰","🇲🇨","🇼🇸"],
        color: .red,
            accentColor: .blue),
        // So on and so forth for all 6 themes
]
