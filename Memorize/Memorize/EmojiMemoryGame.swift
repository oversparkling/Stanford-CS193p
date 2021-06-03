//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nicholas Ong on 31/5/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻","🎃","🕷","💀","🐍"]
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2..<emojis.count)){pairIndex in emojis[pairIndex]}
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
    }
   
    
}
