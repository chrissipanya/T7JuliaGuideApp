//
//  MoveListDetailsModel.swift
//  T7JuliaGuide
//
//  Created by Chris Sipanya on 12/11/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import Foundation

struct MoveListDetailsModel {
    var notation: String
    var damage: String
    var hit_level: String
    var notes: String
    var speed: String
    var on_block: String
    var on_hit: String
    var on_ch: String
    
    init(notation: String , damage: String , hitLevel: String , specialProperty: String , startUpFrame: String , blockFrame: String , hitFrame: String , chFrame: String) {
        self.notation = notation
        self.damage = damage
        self.hit_level = hitLevel
        self.notes = specialProperty
        self.speed = startUpFrame
        self.on_block = blockFrame
        self.on_hit = hitFrame
        self.on_ch = chFrame
    }
}
