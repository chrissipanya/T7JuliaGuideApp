//
//  DataManager.swift
//  T7JuliaGuide
//
//  Created by Chris Sipanya on 12/10/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import Foundation
import UIKit

class DataManager: NSObject {
    
    static let shareInstance = DataManager()
    
    let selectionCell: [MainPageSelectionModel] = [MainPageSelectionModel(selectionTitle:"Frames"),
                                                   MainPageSelectionModel(selectionTitle: "Combos"),
                                                   MainPageSelectionModel(selectionTitle: "Punish"),
                                                   MainPageSelectionModel(selectionTitle: "Oki")]
    
    let moveListCell: [MoveListModel] = [MoveListModel(moveCommand: "1"),
                                         MoveListModel(moveCommand: "1,1"),
                                         MoveListModel(moveCommand: "1,1,1")]
    
    let moveListDetail: [MoveListDetailsModel] = [MoveListDetailsModel(notation: "1" , damage: "9", hitLevel: "High", specialProperty: "None", startUpFrame: "i10",blockFrame: "+1", hitFrame: "+8", chFrame: "+8") ,
                                                  MoveListDetailsModel(notation: "1,1" , damage: "9,16", hitLevel: "High,Mid", specialProperty: "none", startUpFrame: "i10", blockFrame: "-11~-10", hitFrame: "0~+1", chFrame: "0~+1 OC"),
                                                  MoveListDetailsModel(notation: "1,1,1" , damage: "9,16,21", hitLevel: "High.Mid,Mid", specialProperty: "none", startUpFrame: "i10", blockFrame: "-12~-11", hitFrame: "+26~+27 (KND)", chFrame: "+26~+27 (KND)")]
}
