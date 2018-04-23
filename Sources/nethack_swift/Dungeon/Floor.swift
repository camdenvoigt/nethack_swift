//
//  Floor.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation

struct Floor: WindowRepresentable {
    var name: String = "Floor"
    var symbol: String = "#"
    var position: [String : Int] = ["row": 0, "col": 0]
    
    init(row: Int, col: Int) {
        position["row"] = row
        position["col"] = col
    }
}
