//
//  Room.swift
//  nethack_swift
//
//  Created by Voigt,Jackson on 6/29/17.
//  Copyright © 2017 Voigt,Camden. All rights reserved.
//

import Foundation
import CNCurses

struct Room: DungeonEntity {
    var entities: [WindowRepresentable] = []
    var dimensions: [String : UInt] = ["row": 0, "col": 0, "height": 5, "width": 5]
    
    init() {
        self = Room.createRoom()
    }
    
    private init(entities: [WindowRepresentable], row: UInt, col: UInt, height: UInt, width: UInt) {
        dimensions["row"] = row
        dimensions["col"] = col
        dimensions["height"] = height
        dimensions["width"] = width
    }
    
    public static func createRoom() -> Room {
        let height = arc4random_uniform(4) + 2
        let width = arc4random_uniform(6) + 2
        let row = arc4random_uniform(81) + 1
        let col = arc4random_uniform(19) + 1
        
        let entities = Room.createEntities(row: Int(row), col: Int(col), height: Int(height), width: Int(width))
        
        return Room(entities: entities, row: UInt(row), col: UInt(col), height: UInt(height), width: UInt(width))
    }
    
    private static func createEntities(row: Int, col: Int, height: Int, width: Int) -> [WindowRepresentable] {
        var entities: [WindowRepresentable] = []
        for i in 0..<(height - 1) {
            for j in 0..<(width - 1) {
                if i == 0 || i == (height - 1) {
                    entities.append(HorizaontalWall(row: i + row, col: j + col))
                } else if j == 0 || j == (width - 1) {
                    entities.append(VerticalWall(row: i + row, col: j + col))
                } else {
                    entities.append(Floor(row: i + row, col: j + col))
                }
            }
        }
        
        return entities
    }
}
