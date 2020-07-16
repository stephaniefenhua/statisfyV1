//
//  ViewController2.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var sat = 400
    var satSub = false
    var act = 1
    var actSub = false
    var gpa = 1.0
    @IBOutlet weak var gpaText: UITextField!
    @IBOutlet weak var actText: UITextField!
    @IBOutlet weak var satText: UITextField!
    @IBOutlet weak var satSwitch: UISwitch!
    @IBOutlet weak var actSwitch: UISwitch!
    @IBOutlet weak var matchesButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        matchesButton.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    @IBAction func satSwitched(_ sender: Any) {
        if satSwitch.isOn {
            satSub = true
        }
    }
    @IBAction func actSwitched(_ sender: Any) {
        if actSwitch.isOn {
            actSub = true
        }
    }
    
    @IBAction func matchButtonPressed(_ sender: Any) {
        if satSub {
            sat = Int(satText.text!) ?? 0
        }
        
        if actSub {
            act = Int(actText.text!) ?? 0
            
        }
        if gpaText.text != "" {
            gpa = Double(gpaText.text!) ?? 1.0
        }
        
    }
    
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? ViewController3 {
            addVC.previousVC = self
        }
        
    }
   

}
