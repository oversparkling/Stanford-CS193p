//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nicholas Ong on 31/5/21.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards: Array<Card>
    
    mutating func choose(card: Card){
        print("Card chosen: \(card)")
        let chosenIndex: Int = cards.firstIndex(matching:card)
        cards[chosenIndex].isFacedUp = !cards[chosenIndex].isFacedUp
    }
    
    
    init(numberOfPairsOfCards:Int , cardContentFactory: (Int)->CardContent ){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card( content: content,id: pairIndex*2))
            cards.append(Card(content: content,id: pairIndex*2+1))
        }
        cards = cards.shuffled()
    }
    
    struct Card: Identifiable{
        var isFacedUp:Bool = true
        var isMatched:Bool = false
        var content: CardContent
        var id:Int
    }
    
}
