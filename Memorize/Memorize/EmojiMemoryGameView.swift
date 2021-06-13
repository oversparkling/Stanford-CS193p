//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Nicholas Ong on 30/5/21.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    var body: some View {
        //second parameter is 'inline' that returns a cardview
        Grid(viewModel.cards){
            card in CardView(card: card).onTapGesture{
                self.viewModel.choose(card: card)
            }.padding()
        }.padding()
        .foregroundColor(Color.orange)
    }

        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}

struct CardView: View{
    var card : MemoryGame<String>.Card
    
    var body: some View{
        GeometryReader(content: {geometry in
            ZStack{
                if card.isFacedUp{
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                    Text(card.content)
                    
                }
                else{
                    if !card.isMatched{
                        RoundedRectangle(cornerRadius: 10.0).fill()
                    }  
                }
            }.font(Font.system(size: min(geometry.size.width,geometry.size.height)*0.75))
        })
        
        }
        
    }

