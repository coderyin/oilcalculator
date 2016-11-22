//
//  CalculatorViewController.swift
//  addoil
//
//  Created by 王寅 on 16/11/22.
//  Copyright © 2016年 evolution. All rights reserved.
//

import UIKit
import TextFieldEffects
import DynamicColor

class CalculatorViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let originalColor = DynamicColor(hexString: "#c0392b")

        let desaturatedColor = originalColor.desaturated()

        let grayscaledColor = originalColor.grayscaled()
        
        let textField = KaedeTextField(frame: CGRect(x: 0, y: 300, width: 320, height: 40));
        textField.placeholderColor = grayscaledColor
        textField.foregroundColor = desaturatedColor
        textField.backgroundColor = grayscaledColor;
//        self.view.addSubView(textField)
        self.view.addSubview(textField)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view .endEditing(true)
    }
}
