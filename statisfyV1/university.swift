//
//  university.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class university {
    var name = ""
    var avgGPA = 4.0
    var avgSAT = 400.0
    var sat75 = 400.0
    var sat25 = 400.0
    var avgACT = 400.0
    var act75 = 400.0
    var act25 = 400.0
    var accRate = 0.0
    
    init(schoolName: String, gpa : Double, act : Double, ACT75 : Double, ACT25 : Double, sat : Double, SAT75 : Double, SAT25 : Double, acceptanceRate : Double ) {
        name = schoolName
        avgGPA = gpa
        avgSAT = sat
        sat75 = SAT75
        sat25 = SAT25
        avgACT = act
        act75 = ACT75
        act25 = ACT25
        accRate = acceptanceRate
    }
}
