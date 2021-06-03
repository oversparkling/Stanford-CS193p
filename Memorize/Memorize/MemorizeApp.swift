//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nicholas Ong on 30/5/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
