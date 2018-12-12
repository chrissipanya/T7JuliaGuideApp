//
//  FrameDataViewController.swift
//  T7JuliaGuide
//
//  Created by Chris Sipanya on 12/10/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import UIKit

class FrameDataViewController: UIViewController {
    
    @IBOutlet weak var damageInputLabel: UILabel!
    @IBOutlet weak var hitLevelInputLabel: UILabel!
    @IBOutlet weak var specialPropInputLabel: UILabel!
    @IBOutlet weak var blockInputLabel: UILabel!
    @IBOutlet weak var startUpInputLabel: UILabel!
    @IBOutlet weak var hitInputLabel: UILabel!
    @IBOutlet weak var chInputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension FrameDataViewController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shareInstance.moveListCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "frameDataCell") as! FrameDataTableViewCell
        cell.moveCommandLabel.text = DataManager.shareInstance.moveListCell[indexPath.row].moveCommand
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        damageInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].damage
        hitLevelInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].hitLevel
        specialPropInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].specialProperty
        blockInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].blockFrame
        startUpInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].startUpFrame
        hitInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].hitFrame
        chInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].chFrame
    }
    
}
