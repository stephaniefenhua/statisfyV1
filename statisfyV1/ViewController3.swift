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
    
    @IBOutlet weak var actLabel: UILabel!
    @IBOutlet weak var satLabel: UILabel!
    @IBOutlet weak var gpaLabel: UILabel!
    var previousVC = ViewController2()
    override func viewDidLoad() {
        super.viewDidLoad()
        let newStudent = student(satScore: Double(previousVC.sat), satSubmission: previousVC.satSub, actScore: Double(previousVC.act), actSubmission: previousVC.actSub, gpaVal: previousVC.gpa)
        newStudent.getSchools()
        safetySchools.text = newStudent.schoolsToString()[0]
        targetSchools.text = newStudent.schoolsToString()[1]
        reachSchools.text = newStudent.schoolsToString()[2]
        
        if newStudent.actSubmit {
            actLabel.text = String(Int(newStudent.act))
        }
        else {
            actLabel.text = "N/A"
        }
        
        if newStudent.satSubmit {
            satLabel.text = String(Int(newStudent.sat))
        }
        else {
            satLabel.text = "N/A"
        }
        
        gpaLabel.text = String(newStudent.gpa)
        
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
