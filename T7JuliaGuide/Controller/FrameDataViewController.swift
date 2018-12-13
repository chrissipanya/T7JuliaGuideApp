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
    @IBOutlet weak var notationTableView: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Notation"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    // MARK: - Function use more the serach bar and filtering
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        DataManager.shareInstance.filterNotation = DataManager.shareInstance.moveListDetail.filter({( moveNotation : MoveListDetailsModel) -> Bool in
            return moveNotation.notation.lowercased().contains(searchText.lowercased())
        })
        notationTableView.reloadData()
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }

}

extension FrameDataViewController: UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering(){
            return DataManager.shareInstance.filterNotation.count
        }
        else {
            return DataManager.shareInstance.moveListDetail.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "frameDataCell") as! FrameDataTableViewCell
        if isFiltering(){
            cell.moveCommandLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].notation
        }
        else {
            cell.moveCommandLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].notation
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if isFiltering(){
            damageInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].damage
            hitLevelInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].hit_level
            specialPropInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].notes
            blockInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].on_block
            startUpInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].speed
            hitInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].on_hit
            chInputLabel.text = DataManager.shareInstance.filterNotation[indexPath.row].on_ch
        }
        else{
            damageInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].damage
            hitLevelInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].hit_level
            specialPropInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].notes
            blockInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_block
            startUpInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].speed
            hitInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_hit
            chInputLabel.text = DataManager.shareInstance.moveListDetail[indexPath.row].on_ch
        }
    }
    
}

extension FrameDataViewController: UISearchResultsUpdating{
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
}
