//
//  DataModel.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 24.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import Foundation

class DataModel {
    var homeTeams: [String]!
    var guestTeams: [String]!
    var homeGoals: [Int]!
    var guestGoals: [Int]!
    var scorePerTeam: [String: (Int, String, String)]!
    var myTeamsArray = [String]()
    
    init() {
        homeTeams = [String]()
        guestTeams = [String]()
        homeGoals = [Int]()
        guestGoals = [Int]()
        scorePerTeam = [String: (Int, String, String)]()
    }
    
    func newRanking() -> [String] {
        var scorePerTeamNew = scorePerTeam.sorted(by: {$0.value.0 > $1.value.0})
        scorePerTeamNew.sort(by: {$0.value.0 != $1.value.0 ? $0.value.0 > $1.value.0 : Int($0.value.2)! > Int($1.value.2)!})
        for (k, _) in scorePerTeamNew {
            myTeamsArray.append(k)
        }
        print(myTeamsArray)
        return myTeamsArray
    }
}
let obj1 = DataModel()
