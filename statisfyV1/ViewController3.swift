//
//  ViewController3.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var safetySchools: UILabel!
    @IBOutlet weak var targetSchools: UILabel!
    @IBOutlet weak var reachSchools: UILabel!
    @IBOutlet weak var homeButton: UIButton!
    var previousVC = ViewController2()
    override func viewDidLoad() {
        super.viewDidLoad()
        let newStudent = student(satScore: previousVC.sat, satSubmission: previousVC.satSub, actScore: previousVC.act, actSubmission: previousVC.actSub, gpaVal: previousVC.gpa)
        safetySchools.text = newStudent.schoolsToString()[0]
        targetSchools.text = newStudent.schoolsToString()[1]
        reachSchools.text = newStudent.schoolsToString()[2]
        homeButton.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
