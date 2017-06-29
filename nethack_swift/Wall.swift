//
//  Wall.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

struct VerticalWall: ScreenEntity {
    var name: String = "VWall"
    var representation: Character = "|"
    var position: [String : UInt] = ["row": 0, "col": 0]
    
    init(row: UInt, col: UInt) {
        position["row"] = row
        position["col"] = col
    }
}

struct HorizaontalWall: ScreenEntity {
    var name: String = "HWall"
    var representation: Character = "-"
    var position: [String : UInt] = ["row": 0, "col": 0]
    
    init(row: UInt, col: UInt) {
        position["row"] = row
        position["col"] = col
    }
}
