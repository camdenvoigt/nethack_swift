//
//  ScreenRepresentable.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

protocol ScreenEntity {
    //Name of the item to be displayed
    var name: String {get}
    
    //Character to that represents the object
    var representation: Character {get}
    
    //A Dictionary to keep track of the row and col of the entity
    var position: [String : UInt] {get}
    
    //An initalizer to set the position
    init(row: UInt, col: UInt)
}
