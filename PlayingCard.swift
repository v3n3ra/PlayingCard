//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by V K on 15.12.2022.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    var description: String { return "\(rank)\(suit)"}
    
    var suit: Suit
    var rank: Rank
    
    
    enum Suit: String {
        case spades = "♠️", hearts = "♥️", diamonds = "♦️", clubs = "♣️"
        
        static var all = [Self.spades, .hearts, .diamonds, .clubs]
    }
    
    enum Rank {
        case ace, face(String), numeric(Int)
        var order: Int? {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return nil
            }
        }
        
        static var all: [Rank] {
            var allRanks: [Rank] = [.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Self.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
