//
//  Renderer.swift
//  nethack_swift
//
//  Created by Camden Voigt on 5/12/18.
//
// In charge of drawing output to the terminal

import Foundation
import CNCurses

public class Renderer {
    
    // Setup ncurses to be ready to output correctly
    func setup() {
        initscr()                   // Init window. Must be first
        cbreak()
        noecho()                    // Don't echo user input
        nonl()                      // Disable newline mode
        intrflush(stdscr, true)     // Prevent flush
        keypad(stdscr, true)        // Enable function and arrow keys
        curs_set(1)                 // Set cursor to invisible
    }
    
    func drawStartScreen() {
        //TODO
        // Print starting information
        addstr("Press 'q' to Quit.")
        move(5, 0)
        addstr("Begin Game!")
        refresh()
    }
    
    func drawQuitScreen() {
        //TODO
        addstr("Press 'q' to Quit.")
        move(5, 0)
        addstr("End Game")
        refresh()
    }
    
}
