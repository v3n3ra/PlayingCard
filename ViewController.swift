//
//  ViewController.swift
//  PlayingCard
//
//  Created by V K on 15.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

