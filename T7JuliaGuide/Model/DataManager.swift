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
}
