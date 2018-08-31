//
//  TableVC.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 25.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {

    var goals1: String = ""
    var goals2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return obj1.homeTeams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCells", for: indexPath) as! MyTableViewCell
        
        cell.homeTeamLabel.text = obj1.homeTeams[indexPath.row]
        cell.guestTeamLabel.text = obj1.guestTeams[indexPath.row]
        return cell
    }
    
    @IBAction func doneBtn(_ sender: UIBarButtonItem) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        makeRanking()
    }
    
    func makeRanking() {
        obj1.myTeamsArray.removeAll()
        let myPath = tableView.indexPathsForVisibleRows
        for k in 0..<myPath!.count {
            let myCell = tableView.cellForRow(at: myPath![k]) as! MyTableViewCell
            goals1 = myCell.homeGoalsTextField.text!
            goals2 = myCell.guestGoalsTextField.text!
            if goals1 > goals2 {
                obj1.scorePerTeam["\(myCell.homeTeamLabel.text!)"] = (3, "\(goals1) - \(goals2)", "\(Int(goals1)! - Int(goals2)!)", Int(goals1)!)
                obj1.scorePerTeam["\(myCell.guestTeamLabel.text!)"] = (0, "\(goals2) - \(goals1)", "\(Int(goals2)! - Int(goals1)!)", Int(goals2)!)
            } else if goals2 > goals1 {
                obj1.scorePerTeam["\(myCell.homeTeamLabel.text!)"] = (0, "\(goals1) - \(goals2)", "\(Int(goals1)! - Int(goals2)!)", Int(goals1)!)
                obj1.scorePerTeam["\(myCell.guestTeamLabel.text!)"] = (3, "\(goals2) - \(goals1)", "\(Int(goals2)! - Int(goals1)!)", Int(goals2)!)
            } else if goals1 == goals2 && goals1 != "" && goals2 != "" {
                obj1.scorePerTeam["\(myCell.homeTeamLabel.text!)"] = (1, "\(goals1) - \(goals2)", "\(Int(goals1)! - Int(goals2)!)", Int(goals1)!)
                obj1.scorePerTeam["\(myCell.guestTeamLabel.text!)"] = (1, "\(goals2) - \(goals1)", "\(Int(goals2)! - Int(goals1)!)", Int(goals2)!)
            }
        }
        _ = obj1.newRanking()
    }

}
