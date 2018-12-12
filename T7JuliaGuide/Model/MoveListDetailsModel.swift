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
    var hitLevel: String
    var specialProperty: String
    var startUpFrame: String
    var blockFrame: String
    var hitFrame: String
    var chFrame: String
    
    init(notation: String , damage: String , hitLevel: String , specialProperty: String , startUpFrame: String , blockFrame: String , hitFrame: String , chFrame: String) {
        self.notation = notation
        self.damage = damage
        self.hitLevel = hitLevel
        self.specialProperty = specialProperty
        self.startUpFrame = startUpFrame
        self.blockFrame = blockFrame
        self.hitFrame = hitFrame
        self.chFrame = chFrame
    }
}
