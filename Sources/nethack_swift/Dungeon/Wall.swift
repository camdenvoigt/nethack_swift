//
//  Wall.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

struct VerticalWall: WindowRepresentable {
    var name: String = "VWall"
    var symbol: String = "|"
    var position: [String : Int] = ["row": 0, "col": 0]
    
    init(row: Int, col: Int) {
        position["row"] = row
        position["col"] = col
    }
}

struct HorizaontalWall: WindowRepresentable {
    var name: String = "HWall"
    var symbol: String = "-"
    var position: [String : Int] = ["row": 0, "col": 0]
    
    init(row: Int, col: Int) {
        position["row"] = row
        position["col"] = col
    }
}
