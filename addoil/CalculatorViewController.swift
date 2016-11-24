//
//  CalculatorViewController.swift
//  addoil
//
//  Created by 王寅 on 16/11/22.
//  Copyright © 2016年 evolution. All rights reserved.
//

import UIKit
import TextFieldEffects

class CalculatorViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var displayLabel: UILabel!
    var oilPriceTextField: CustomTextField! = nil
    var fuelConsumptionTextField: CustomTextField! = nil
    var totalMoneyTextField: CustomTextField! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.gray
        
        oilPriceTextField = CustomTextField(frame: CGRect(x: 0, y: 140, width: 320, height: 60));
        oilPriceTextField.placeholder = "今日油价"
        oilPriceTextField.placeholderColor = UIColor.blue
        oilPriceTextField.foregroundColor = UIColor.gray
        oilPriceTextField.backgroundColor = UIColor.groupTableViewBackground
        self.view.addSubview(oilPriceTextField)
        
        fuelConsumptionTextField = CustomTextField(frame: CGRect(x: 0, y: 200, width: 320, height: 60));
        fuelConsumptionTextField.placeholder = "平均油耗"
        fuelConsumptionTextField.placeholderColor = UIColor.blue
        fuelConsumptionTextField.foregroundColor = UIColor.gray
        fuelConsumptionTextField.backgroundColor = UIColor.groupTableViewBackground
        self.view.addSubview(fuelConsumptionTextField)
        
        totalMoneyTextField = CustomTextField(frame: CGRect(x: 0, y: 260, width: 320, height: 60));
        totalMoneyTextField.placeholder = "加油金额"
        totalMoneyTextField.placeholderColor = UIColor.blue
        totalMoneyTextField.foregroundColor = UIColor.gray
        totalMoneyTextField.backgroundColor = UIColor.groupTableViewBackground
        self.view.addSubview(totalMoneyTextField);
        
        let button = UIButton(frame: CGRect(x: 20, y: 400, width: 200, height: 40))
        button .setTitle("计算", for: UIControlState.normal)
        button.addTarget(self, action: #selector(calculations), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view .endEditing(true)
    }
    
    func calculations() {
        let oilPrice = Float(oilPriceTextField.text!)
        let fuelConsumption = Float(fuelConsumptionTextField.text!)
        let totalMoney = Float(totalMoneyTextField.text!)
        let oilLitres = totalMoney! / oilPrice!
        
        let kilometre = (oilLitres / fuelConsumption!) * 100
        
        displayLabel.text = "可跑" + String(kilometre);
    }
}
