//
//  DungeonObject.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

protocol DungeonObject {
    // An array of screen entities that will be displayed when the Object displays itself
    var entities: [ScreenEntity] {get set}
    
    // The dimensions of dungeon object including start position height and width
    var dimensions: [String: UInt] {get set}
}
