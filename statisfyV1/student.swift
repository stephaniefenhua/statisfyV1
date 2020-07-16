//
//  student.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class student {
    var sat = 400
    var satSubmit = false
    var act = 1
    var actSubmit = false
    var gpa = 1.0
    var safety : [String] = ["UCR", "UCI", "Purdue"]
    var target : [String] = ["UCB", "USC"]
    var reach : [String] = ["Stanford", "Harvard", "MIT"]


    
    init(satScore : Int, satSubmission : Bool, actScore : Int, actSubmission : Bool, gpaVal : Double) {
        sat = satScore
        satSubmit = satSubmission
        act = actScore
        actSubmit = actSubmission
        gpa = gpaVal
    }
    
    func getSchools() {
        // void, appends values for safety, target, reach
    }
    
    func schoolsToString() -> [String] {
        var lstString : [String] = []
        
        for list in [safety, target, reach] {
            var str = ""
            for school in list {
                str += school + "\n"
            }
            lstString.append(str)
        }
        
        return lstString
            
    }
}
