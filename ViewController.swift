//
//  ViewController.swift
//  Eggy Timer
//
//  Created by Ross on 29/04/2017.
//  Copyright © 2017 Braaaaap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 210
    
    func decreaseTimer() {
        
        if time > 0 {
     
        time -= 1
        
        label.text = String(time)
            
        } else {
            
            timer.invalidate()
        }
        
    }
    
    @IBAction func playButton(_ sender: Any) {
    
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
    
    timer.invalidate()
    
    }
    
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBAction func minusTen(_ sender: Any) {
    
        if time > 10 {
        
            time -= 10
            
            label.text = String(time)
        }
        
        
    }
    
    @IBAction func plusTen(_ sender: Any) {
        
        if time <= 990 {
    
            time += 10
            
            label.text = String(time)
        
        } else {
            
            time = 1000
            label.text = String(time)
        }
    
    }
    
    
    @IBAction func resetTimer(_ sender: Any) {
        
        time = 210
        label.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


