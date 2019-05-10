//
//  ViewController.swift
//  ConversionController
//
//  Created by Tyler Blood on 5/10/19.
//  Copyright © 2019 Tyler Blood. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var holder: String = "";
    var numHolder: Float = 0.0;
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var outputValue: UITextField!
    @IBOutlet weak var inputValue: UITextField!
    @IBAction func btnZero(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "0"
            self.inputDisplay.text = holder
            }
    }
    @IBAction func btnOne(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "1"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnTwo(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "2"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnThree(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "3"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnFour(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "4"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnFive(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "5"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnSix(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "6"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnSeven(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "7"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnEight(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "8"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnNine(_ sender: Any) {
        if (checkLength(text: self.inputDisplay.text ?? "")){
            holder = self.inputDisplay.text ?? ""
            holder += "9"
            self.inputDisplay.text = holder
        }
    }
    @IBAction func btnDot(_ sender: Any) {
        if (self.inputDisplay.text?.contains(".") ?? true){
        } else {
            if (checkLength(text: self.inputDisplay.text ?? "")){
                holder = self.inputDisplay.text ?? ""
                holder += "."
                self.inputDisplay.text = holder
            }
        }
    }
    @IBAction func btnClear(_ sender: Any) {
        self.inputDisplay.text = ""
        self.outputDisplay.text = ""
    }
    @IBAction func btnSwitch(_ sender: Any) {
        numHolder = (self.inputDisplay.text! as NSString).floatValue
        numHolder *= -1
        self.inputDisplay.text = "\(numHolder)"
    }
    @IBAction func btnConvert(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputValue.text = "°C"
            self.inputValue.text = "°F"
            self.numHolder = (self.inputDisplay.text! as NSString).floatValue
            self.numHolder = (self.numHolder - 32)*(5/9)
            self.outputDisplay.text = "\(self.numHolder)"
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputValue.text = "°F"
            self.inputValue.text = "°C"
            self.numHolder = (self.inputDisplay.text! as NSString).floatValue
            self.numHolder = (self.numHolder * (9/5))+32
            self.outputDisplay.text = "\(self.numHolder)"
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputValue.text = "km"
            self.inputValue.text = "mi"
            self.numHolder = (self.inputDisplay.text! as NSString).floatValue
            self.numHolder = (self.numHolder * 1.60934)
            self.outputDisplay.text = "\(self.numHolder)"
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputValue.text = "mi"
            self.inputValue.text = "km"
            self.numHolder = (self.inputDisplay.text! as NSString).floatValue
            self.numHolder = (self.numHolder / 1.609)
            self.outputDisplay.text = "\(self.numHolder)"
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func checkLength(text: String) -> Bool {
        if (text.count > 12){
            return false
        }
        return true
    }
    
    
    


}

