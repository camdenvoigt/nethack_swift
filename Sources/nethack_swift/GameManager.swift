//
//  GameManager.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//
//  A class to manage a game session.
//

import Foundation

enum GameState {
    case gameStart
    case inGame
    case gameEnd
}

class GameManager {
    
    //TODO: maybe make GameManager a protocol for testing purposes
    
    private var renderer: Renderer
    private var inputManager: InputManager
    var gameState: GameState
    
    init() {
        self.gameState = .gameStart
        self.renderer = Renderer()
        self.inputManager = InputManager()
        self.renderer.setup()
        self.inputManager.gameManager = self
    }
    
    // Starts the Game
    func start() {
        self.gameState = .gameStart
        // Draw the start Screen
        self.renderer.drawStartScreen()
        // Wait for user input
        self.inputManager.runInputLoop()
    }
    
    // Handle Events that happen in the game (Mostly user input events)
    func handleEvent(event: Events) {
        switch(event) {
        case .startGame:
            self.gameState = .gameStart
            self.renderer.drawStartScreen()
        case .endGame:
            self.gameState = .gameEnd
            renderer.drawQuitScreen()
        case .moveLeft:
            //TODO
            break
        case .moveUp:
            //TODO
            break
        case .moveRight:
            //TODO
            break
        case .moveDown:
            //TODO
            break
        }
    }

}
