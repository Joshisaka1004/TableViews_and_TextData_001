//
//  MyTableViewCell.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 25.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var homeTeamLabel: UILabel!
    @IBOutlet weak var guestTeamLabel: UILabel!
    @IBOutlet weak var homeGoalsTextField: UITextField!
    @IBOutlet weak var guestGoalsTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
let myTableViewCell = MyTableViewCell()
