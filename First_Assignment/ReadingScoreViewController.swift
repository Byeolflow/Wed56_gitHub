//
//  ReadingScoreViewController.swift
//  First_Assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReadingScoreViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet var viewRSHidden: UIView!
    @IBOutlet var textFieldRScore: UITextField!
    @IBOutlet var scoreLabel: UILabel!
    
    
    var toeflScoreArray: [String] = ["0", "1", "2", "3", "4", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "15", "16", "16", "17", "17", "18", "18", "19", "19", "20", "20", "21", "22", "22", "23", "23", "24", "25", "26", "27", "27", "28", "29", "29", "30"]
    
    
    
    @IBAction func showRScore(_ sender: UIButton) {
        
       
        let score: Int? = Int(textFieldRScore.text!)
        if score != nil {
            if score! >= 40 {
                scoreLabel.text = "30점 입니다."
            }
            else if score! < 0 {
                scoreLabel.text = "맞은 개수를 다시 입력해 주세요."
            }
            else {
                scoreLabel.text = toeflScoreArray[score!] + "점 입니다."
            }
        }
        
        
    }

    func textFieldShouldReturn(_ textField: UITextField)->Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "당신의 점수는?"
        //viewRSHidden.isHidden = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
