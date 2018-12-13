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
        return DataManager.shareInstance.moveListDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "frameDataCell") as! FrameDataTableViewCell
        cell.moveCommandLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].notation
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        damageInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].damage
        hitLevelInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].hit_level
        specialPropInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].notes
        blockInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_block
        startUpInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].speed
        hitInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_hit
        chInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_ch
    }
    
}
