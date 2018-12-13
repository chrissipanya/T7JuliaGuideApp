//
//  DataManager.swift
//  T7JuliaGuide
//
//  Created by Chris Sipanya on 12/10/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import Foundation
import SwiftyJSON

class DataManager: NSObject {
    
    static let shareInstance = DataManager()
    let selectionCell: [MainPageSelectionModel] = [MainPageSelectionModel(selectionTitle:"Frames"),
                                                   MainPageSelectionModel(selectionTitle: "Combos"),
                                                   MainPageSelectionModel(selectionTitle: "Punish"),
                                                   MainPageSelectionModel(selectionTitle: "Oki")]
    var moveListDetail: [MoveListDetailsModel] = []

    func parseJSON() {
        if let path = Bundle.main.path(forResource: "JosieFrames", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = try JSON(data: data)
                //print("jsonData:\(jsonObj)")
               // Loop that puts JSON data in MoveListDetailsModel object
                for (_, dict) in jsonObj["moves"] {
                    let temp = MoveListDetailsModel(notation: dict["notation"].stringValue, damage: dict["damage"].stringValue, hitLevel: dict["hit_level"].stringValue, specialProperty: dict["notes"].stringValue, startUpFrame: dict["speed"].stringValue, blockFrame: dict["on_block"].stringValue, hitFrame: dict["on_hit"].stringValue, chFrame: dict["on_ch"].stringValue)
                    moveListDetail.append(temp)
                }
            } catch let error {
                print("parse error: \(error.localizedDescription)")
            }
        } else {
            print("Invalid filename/path.")
        }
    }

    
    
}
