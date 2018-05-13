//
//  DungeonObject.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

protocol DungeonEntity {
    // An array of screen entities that will be displayed when the Object displays itself
    var entities: [WindowRepresentable] {get set}
    
    // A function to print out the Dungeon Entity using ncurses
    func display()
}

extension DungeonEntity {
    func display() {
        for tile in entities {
            mvwaddch(stdscr, Int32(tile.position["col"]!), Int32(tile.position["row"]!), UnicodeScalar(tile.symbol)!.value)
        }
    }
}
