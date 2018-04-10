//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Lee Offir on 4/9/18.
//  Copyright © 2018 Lee Offir. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    var Array: Array<converter>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let converterArray = [converter(label: "fahrenheit to celsius", input: "°F", output: "°C"),
                          converter(label: "celsius to fahrenheit", input: "°C", output: "°F"),
                          converter(label: "miles to kilometers", input: "Mi", output: "Km"),
                          converter(label: "kilometers to miles", input: "Km", output: "Mi")]
        
 
        Array = converterArray
        outputDisplay.text = Array![0].output
        inputDisplay.text = Array![0].input

    }
    
    @IBAction func converterClick(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: Array![0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.Array![0].input
            self.outputDisplay.text = self.Array![0].output
            
        }))
        alert.addAction(UIAlertAction(title: Array![1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.Array![1].input
            self.outputDisplay.text = self.Array![1].output
            
        }))
        alert.addAction(UIAlertAction(title: Array![2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.Array![2].input
            self.outputDisplay.text = self.Array![2].output
            
        }))
        alert.addAction(UIAlertAction(title: Array![3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.Array![3].input
            self.outputDisplay.text = self.Array![3].output
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
