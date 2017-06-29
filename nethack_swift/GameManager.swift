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
import Darwin.ncurses

class GameManager {
    
    init() {}
    
    func start() {
        initscr()                   // Init window. Must be first
        cbreak()
        noecho()                    // Don't echo user input
        nonl()                      // Disable newline mode
        intrflush(stdscr, true)     // Prevent flush
        keypad(stdscr, true)        // Enable function and arrow keys
        curs_set(1)                 // Set cursor to invisible
        addstr("Press 'q' to Quit.")
        
        move(5, 0)
        
        addstr("Hello")
        move(5, 5)
        addstr(" World!")
        refresh()
        
        
        // Wait for user input
        // Exit on 'q'
        while true {
            
            switch getch() {
                
            case Int32(UnicodeScalar("q").value):
                endwin()
                exit(EX_OK)
            default: true
            }
            
        }
    }
}
