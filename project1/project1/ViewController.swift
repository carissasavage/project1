//
//  ViewController.swift
//  project1
//
//  Created by Carissa Savage on 2/27/19.
//  Copyright © 2019 Carissa Savage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var candle: Int = 0
    var netflix: Int = 0
    var fast: Int = 0
    var carriage: Int = 0
    var total: Int = 0
    var name:String = ""
    

    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var Question: UILabel!
   
    @IBAction func mySubmit(_ sender: Any) {
        Question.resignFirstResponder()

        let name = myName.text!
         Question.text = "\(name), are you romantic? Find out by taking the quiz"
    }
    
    
    
    @IBOutlet weak var myTotal: UILabel!
    
    @IBAction func submit(_ sender: Any) {
        total = candle + netflix + fast + carriage
        if(total < 1) {
            myTotal.text = "Please pick an option "
        
        }
        else if(total == candle + carriage){
            myTotal.text = "You are very romantic!"
           
        }
        else {
            myTotal.text = "You are not romantic!"
           
            
        
        }
    
    
    }
    
    
    
    
    
    
    
    @IBAction func candle(_ sender: UISwitch) {
        if sender.isOn {
            candle = 1
        }
        else {
            candle = 0
        }
    }
   
    @IBAction func netflix(_ sender: UISwitch) {
        if sender.isOn {
            netflix = 1
        }
        else {
            netflix = 0
        }
    }
    
    @IBAction func fast(_ sender: UISwitch) {
        if sender.isOn {
            fast = 1
        }
        else {
            fast = 0
        }
    }
    
    @IBAction func carriage(_ sender: UISwitch) {
        if sender.isOn {
            carriage = 1
        }
        else {
            carriage = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Question.text = " "
    }
    
    
}










