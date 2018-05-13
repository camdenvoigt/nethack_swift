//
//  InputManager.swift
//  nethack_swift
//
//  Created by Camden Voigt on 5/12/18.
//

import Foundation
import CNCurses

public class InputManager {
    
    var gameManager: GameManager?
    
    // Runs an infinite loop waiting for user input
    // When user input is received an event is created and sent to the GameManager to be handled
    func runInputLoop() {
        while true {
            switch getch() {
            // If a is pressed handle moving left
            case Int32(UnicodeScalar("a").value):
                gameManager?.handleEvent(event: .moveLeft)
                break
            // If w is pressed handle moving up
            case Int32(UnicodeScalar("w").value):
                gameManager?.handleEvent(event: .moveUp)
                break
            // If d is pressed handle moving right
            case Int32(UnicodeScalar("d").value):
                gameManager?.handleEvent(event: .moveRight)
                break
            // If s is pressed handle moving left
            case Int32(UnicodeScalar("s").value):
                gameManager?.handleEvent(event: .moveDown)
                break
            // If q is pressed end the game
            case Int32(UnicodeScalar("q").value):
                gameManager?.handleEvent(event: .endGame)
            case Int32(UnicodeScalar("0").value):
                endwin()
                exit(EX_OK)
            default:
                continue
            }
        }
    }
}
