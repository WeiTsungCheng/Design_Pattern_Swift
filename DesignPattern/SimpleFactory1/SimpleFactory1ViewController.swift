//
//  SimpleFactory1ViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import UIKit

class SimpleFactory1ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet var inputATXF: UITextField!
    
    @IBOutlet var operatorTXF: UITextField!
    
    @IBOutlet var inputBTXF: UITextField!
    
    @IBOutlet var resultTXV: UITextView!
    
    
    @IBAction func caculate(_ sender: UIButton) {
        
        let oper: Operation? = OperationFactory.createOperator(operate: operatorTXF.text!)
        
        oper?.numberA = Double(inputATXF.text ?? "0") ?? 0
        oper?.numberB = Double(inputBTXF.text ?? "0") ?? 0
        
        let result = oper?.getResult()
        
        resultTXV.text = String(result ?? 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputATXF.delegate = self
        inputBTXF.delegate = self
        operatorTXF.delegate = self
 
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          textField.resignFirstResponder()
          return true
      }
    

}

