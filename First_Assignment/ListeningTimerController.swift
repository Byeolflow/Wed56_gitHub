//
//  ListeningViewController.swift
//  First_Assignment
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ListeningViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    var timer = Timer()
    var timerIsOn = false
    var timeRemaining = 600
    
    @IBAction func startTapped(_ sender: Any) {
        if !timerIsOn {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerRunning), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
        timerIsOn = false
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 600
        timeLabel.text = "10:00"
        timerIsOn = false
    }
    
    func timerRunning(){
        if timeRemaining != 0{
            
            timeRemaining -= 1
            
            let minutesLeft = Int(timeRemaining) / 60 % 60
            let secondsLeft = Int(timeRemaining) % 60
            timeLabel.text = String(format: "%02d:%02d", minutesLeft, secondsLeft)
        }
        else{
            timer.invalidate()
            timerIsOn = false
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "10:00"
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
