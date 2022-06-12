//
//  StrategyPatternViewController.swift
//  DesignPattern
//
//  Created by WEI-TSUNG CHENG on 2022/6/5.
//

import UIKit

class StrategyPatternViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var priceTXF: UITextField!
    
    @IBOutlet var quantityTXF: UITextField!
    
    @IBOutlet var caculateWayTXF: UITextField!
    
    @IBOutlet var resultTXV: UITextView!
    
    @IBAction func caculateWay(_ sender: UIButton) {
        
        var context: CashContext? = nil
        // 缺點: 生成 Context 建構時的演算法還是要由 客戶端決定
        switch caculateWayTXF.text! {
        case "normal":
            context = CashContext(cs: CashSuper())
            
        case "0.8":
            context = CashContext(cs: CashRebate(rebateRate: "0.8"))
            
        case "1000-300":
            context = CashContext(cs: CashReturn(moneyCondition: "1000", moneyReturn: "300"))
            
        default:
            context = nil
        }
        
        let price: Double = Double(priceTXF.text ?? "0") ?? 0
        let quantity: Double = Double(quantityTXF.text ?? "0") ?? 0
        
        // 使用 Context 使用 getResult 方法 讓具體演算法與客戶端進行了隔離
        let acceptCash = context?.getResult(money: price * quantity)

        resultTXV.text = String(acceptCash ?? 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceTXF.delegate = self
        quantityTXF.delegate = self
        caculateWayTXF.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          textField.resignFirstResponder()
          return true
      }
}
