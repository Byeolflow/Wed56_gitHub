//
//  ListeningScoreViewController.swift
//  First_Assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ListeningScoreViewController: UIViewController {
    @IBOutlet var viewLSHidden: UIView!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var textFieldScore: UITextField!
    
    var toeflScoreArray: [String] = ["0", "2", "4", "5", "6", "8", "9", "11", "12", "13", "14", "15", "15", "16", "17", "17", "18", "19", "19", "20", "21", "21", "22", "22", "23", "24", "25", "26", "27", "28", "28", "29" , "30"]
    
    
    @IBAction func showScore(_ sender: Any) {
        let score: Int? = Int(textFieldScore.text!)
        if score != nil {

            if score! >= 34 {
                scoreLabel.text = "30점 입니다."
                //viewLSHidden.isHidden = false
            }
            else if score! < 0 {
                scoreLabel.text = "맞은 개수를 다시 입력해 주세요."
                //viewLSHidden.isHidden = false
            }
            else{
                scoreLabel.text = toeflScoreArray[score!] + "점 입니다."
                //viewLSHidden.isHidden = false
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
        //viewLSHidden.isHidden = true
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
