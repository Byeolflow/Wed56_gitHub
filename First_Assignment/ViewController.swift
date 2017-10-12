//
//  ViewController.swift
//  First_Assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var choiceSubject: UIPickerView!
   

    var subjectArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         subjectArray = ["Reading", "Listening"]
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subjectArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return subjectArray[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func choiceBtnPage(_ sender: UIButton) {
        if choiceSubject.selectedRow(inComponent: 0) == 0 {
            performSegue(withIdentifier: "toReadingView", sender: self)
        }
        else
        {
         performSegue(withIdentifier: "toListeningView", sender: self)
        }
    }
    
    
}
