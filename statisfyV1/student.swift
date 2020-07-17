//
//  student.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class student {
    var sat = 400.0
    var satSubmit = false
    var act = 1.0
    var actSubmit = false
    var gpa = 1.0
    var safety : [String] = []
    var target : [String] = []
    var reach : [String] = []
    var unis : [university] = []
    var uniStats = ["Princeton" : [3.90, 34, 35, 32, 1510, 1570, 1440, 6.4] ,
    "Yale" : [3.95, 34, 35, 33, 1515, 1600, 1410, 6.9] ,
    "UC Berkeley" : [3.89, 31, 24, 28, 1415, 1530, 1300, 17.1] ,
    "Caltech" : [4.0, 36, 36, 35, 1545, 1570, 1530,7.7] ,
    "UC San Diego" : [3.82, 30, 33, 26, 1360, 1470, 1250, 30] ,
    "UC Irvine" : [3.92, 29, 33, 25, 1310, 1440, 1180, 29] ,
    "Cal Poly SLO" : [3.99, 29, 32, 26, 1335, 1430, 1240, 30] ,
    "NYU" : [3.69, 32, 34, 30, 1440, 1510, 1370, 20] ,
    "SJSU" : [3.4, 23, 27, 18, 1145, 1260, 1030, 55] ,
    "Chico State" : [3.41, 21, 24, 18, 1100, 1190, 1000, 65] ,
    "UC Riverside" : [3.69, 27, 30, 24, 1225, 1330, 1130, 51],
    "UC Merced" : [3.56, 22, 25, 19, 1080, 1180, 990, 66],
    "CSULB" : [3.5, 23, 26, 20, 1145, 1250, 1040, 28],
    "Texas A&M" : [3.68, 29, 31, 26, 1275, 1390, 1180, 70.5],
    "UC Santa Barbara" : [3.9, 29, 32, 29, 1355, 1480, 1230, 32.2],
    "UC Santa Cruz" : [3.55, 28, 31, 24, 1285, 1400, 1170, 50.9],
    "University of Oregon" : [3.59, 25, 28, 22, 1185, 1290, 1080, 82.8 ],
    "University of San Francisco" : [3.54, 26, 29, 23, 1233, 1330, 1130, 65.6],
    "University of Arizona" : [3.42, 25, 29, 21, 1235, 1350, 1120, 83.6],
    "University of Michigan" : [3.88, 33, 34,31, 1435, 1530, 1340, 26.5],
    "University of the Pacific" : [3.52, 26, 30, 22, 1210, 1330, 1070, 63]]

    init(satScore : Double, satSubmission : Bool, actScore : Double, actSubmission : Bool, gpaVal : Double) {
        sat = satScore
        satSubmit = satSubmission
        act = actScore
        actSubmit = actSubmission
        gpa = gpaVal
        
        for i in uniStats.keys {
            unis.append(university(schoolName: i, gpa: uniStats[i]![0], act: uniStats[i]![1], ACT75: uniStats[i]![2], ACT25: uniStats[i]![3], sat: uniStats[i]![4], SAT75: uniStats[i]![5], SAT25: uniStats[i]![6], acceptanceRate: uniStats[i]![7]))
        }
        
    }
    
    func getSchools() {
        // uniStats[0] == GPA, [1] == Avg ACT, [2] == ACT 75%, [3] == ACT 25%, [4] Avg. SAT
        // [5] == SAT 75%, [6] == SAT 25%, [7] acceptance rate
        // void, appends values for safety, target, reach
        
        for uni in unis {
            if (satSubmit || actSubmit) {
                if uni.accRate <= 15 {
                    reach.append(uni.name)
                }
                else if uni.accRate <= 25 {
                    if (((actSubmit && act >= uni.act75) || (satSubmit && sat >= uni.sat75)) && gpa >= uni.avgGPA) {
                        target.append(uni.name)
                    }
                    else {
                        reach.append(uni.name)
                    }
                }
                else if uni.accRate <= 40 {
                    if (((actSubmit && act >= uni.avgACT) || (satSubmit && sat >= uni.avgSAT)) && gpa >= uni.avgGPA) {
                        safety.append(uni.name)
                    }
                    else {
                        target.append(uni.name)
                    }
                }
                else {
                    if (((actSubmit && act >= uni.act25) || (satSubmit && sat >= uni.sat25)) && gpa >= uni.avgGPA) {
                        safety.append(uni.name)
                    }
                    else {
                        target.append(uni.name)
                    }
                }
            }
            else {
                if uni.accRate <= 20 {
                    reach.append(uni.name)
                }
                else if uni.accRate <= 40 {
                    if gpa >= uni.avgGPA + 0.1 || (uni.avgGPA >= 3.9 && gpa > uni.avgGPA) || (gpa == 4.0) {
                        target.append(uni.name)
                    }
                    else {
                        reach.append(uni.name)
                    }
                }
                else if uni.accRate <= 50 {
                    if gpa >= uni.avgGPA + 0.05 {
                        safety.append(uni.name)
                    }
                    else {
                        target.append(uni.name)
                    }
                    }
                else {
                    if gpa >= uni.avgGPA {
                        safety.append(uni.name)
                    }
                    else {
                        target.append(uni.name)
                    }
                }
            }
        }
        
    }
    
    func schoolsToString() -> [String] {
        var lstString : [String] = []
        
        for list in [safety, target, reach] {
            var str = ""
            var lst : [String] = []
            if list.count > 8 {
                lst = Array(list[0...7])
            }
            else {
                lst = list
            }
            for school in lst {
                str += school + "\n"
            }
            lstString.append(str)
        }
        
        return lstString
            
    }
}
