//
//  ViewController.swift
//  T7JuliaGuide
//
//  Created by Chris Sipanya on 12/10/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var frontPageImageView: UIImageView!
    @IBOutlet weak var selectionTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        frontPageImageView.image = UIImage(named: "Julia_Chang_T7")
        selectionTableView.tableFooterView = UIView()
        selectionTableView.alwaysBounceVertical = false
    }


}

extension MainPageViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shareInstance.selectionCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectionCell", for: indexPath) as! MainPageSelectionTableViewCell
        cell.mainPageSelectionLabel.text = DataManager.shareInstance.selectionCell[indexPath.row].selectionTitle
        return cell
    }
    
    
    
    
}
