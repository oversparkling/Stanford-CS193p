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
        emojis: ["๐ป","๐","๐ท","๐งโโ๏ธ","๐ง๐ผโโ๏ธ","โ ๏ธ","๐ฝ","๐ฆนโโ๏ธ","๐ฆ","๐","โฐ๏ธ","๐ฎ"],
        color: .orange,
            accentColor: .red),
                 // No number of pairs for first theme as per requirements
    Theme(
        name: "Flags",
        emojis: ["๐ธ๐ฌ","๐ฏ๐ต","๐ดโโ ๏ธ","๐ณ๏ธโ๐","๐ฌ๐ง","๐น๐ผ","๐บ๐ธ","๐ฆ๐ถ","๐ฐ๐ต","๐ญ๐ฐ","๐ฒ๐จ","๐ผ๐ธ"],
        color: .red,
            accentColor: .blue),
        // So on and so forth for all 6 themes
]
