//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nicholas Ong on 31/5/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    
    var theme = themes.randomElement()!
    var model: MemoryGame<String>
    static func createMemoryGame(theme:Theme) -> MemoryGame<String>{
        let emojis: Array<String> = theme.emojis.shuffled()
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 4...6)) { index in
            emojis[index]
        }
    }
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    init(){
            model =  EmojiMemoryGame.createMemoryGame(theme: theme)
        }
    func newGame() {
        objectWillChange.send()
        theme = themes.randomElement()!
        model =  EmojiMemoryGame.createMemoryGame(theme: theme)
    }
    
    
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
    }
   
    }

