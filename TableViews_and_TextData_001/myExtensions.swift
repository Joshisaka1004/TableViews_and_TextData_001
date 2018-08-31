//
//  myExtensions.swift
//  TableViews_and_TextData_001
//
//  Created by Joachim Vetter on 29.08.18.
//  Copyright © 2018 Joachim Vetter. All rights reserved.
//

import Foundation

extension String {
    func convertToRequestedString1() -> (String, [String]) {
        let newArray = self.components(separatedBy: "\n")
        let newStr = newArray.joined(separator: "-:-")
        let finalArray = newStr.components(separatedBy: "-:-")
        let finalStr = finalArray.joined(separator: ", ")
        return (finalStr, finalArray)
    }
}
