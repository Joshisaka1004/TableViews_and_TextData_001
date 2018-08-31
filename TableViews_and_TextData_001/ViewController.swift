//
//  ViewController.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 24.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var midLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataGathering()
    }
    
    func dataGathering() {
        /*if let myPath = Bundle.main.path(forResource: "Bundesliga18-19", ofType: "txt"), let myText = try? String(contentsOfFile: myPath) {
            topLabel.text = myPath
            midLabel.text = myText
            let myTempArray = myText.components(separatedBy: "\n")
            print(myTempArray)
        }*/
        
        if let myPath = Bundle.main.path(forResource: "Bundesliga18-19", ofType: "txt") {
            var myText = ""
            do {
                myText = try String(contentsOfFile: myPath)

            } catch {
                print("Sorry...some error has occurred!")
            }
            topLabel.text = myPath
            midLabel.text = myText
            
            let result = myText.convertToRequestedString1()
            bottomLabel.text = result.0
            teamsToDataModel(array: result.1)
        }
    }
    
    func teamsToDataModel(array: [String]) {
        for team in 0..<array.count {
            if team % 2 == 0 {
                obj1.homeTeams.append(array[team])
            } else {
                obj1.guestTeams.append(array[team])
            }
        }
        
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toTableVC", sender: self)
    }
}


