//
//  RankingVC.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 30.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class RankingVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return obj1.myTeamsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rankingCells", for: indexPath) as! RankingTableViewCell
        cell.tabelleTeamLabel.text = obj1.myTeamsArray[indexPath.row]
        return cell
    }
}
