//
//  MemoryGame.swift
//  Memorize
//
//  Created by Nicholas Ong on 31/5/21.
//

import Foundation

struct MemoryGame<CardContent> where CardContent:Equatable{
    var cards: Array<Card>
    
    var points : Int = 0
    
    var indexOfTheOneAndOnlyFacedUpCard: Int?{
        get{
            var faceUpCardIndices = [Int]()
            for index in cards.indices{
                if cards[index].isFacedUp{
                    faceUpCardIndices.append(index)
                }
            }
            if faceUpCardIndices.count == 1{
                return faceUpCardIndices.first
            }
            else{
                return nil
            }
        }
        set{
            for index in cards.indices{
                if index == newValue{
                    cards[index].isFacedUp   = true
                } else{
                    cards[index].isFacedUp   = false
                }
                
            }
        }
    }
    
    mutating func choose(card: Card){
        if let chosenIndex: Int = cards.firstIndex(matching:card) , !cards[chosenIndex].isFacedUp , !cards[chosenIndex].isMatched{
            if let potentialMatchIndex = indexOfTheOneAndOnlyFacedUpCard{
                if cards[chosenIndex].content == cards[potentialMatchIndex].content{
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    points = points + 2
                }
                else {
                    points = points - 1
                }
            }else{
                indexOfTheOneAndOnlyFacedUpCard = chosenIndex
            }
            self.cards[chosenIndex].isFacedUp = true
           
        }
    }
    
    
    init(numberOfPairsOfCards:Int , cardContentFactory: (Int)->CardContent ){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card( content: content,id: pairIndex*2))
            cards.append(Card( content: content,id: pairIndex*2+1))
        }
        cards = cards.shuffled()
    }
    
    struct Card: Identifiable{
        var isFacedUp:Bool = false
        var isMatched:Bool = false
        var content: CardContent
        var id:Int
    }
    
}
