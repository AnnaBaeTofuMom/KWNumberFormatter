//
//  ViewController.swift
//  KWNumberFormatter
//
//  Created by anna.bae on 06/23/2023.
//  Copyright (c) 2023 anna.bae. All rights reserved.
//

import UIKit
import KWNumberFormatter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter = KWFormatter()
        
        let decimal: Decimal = 23455234230.1234554
        let decstr = formatter.format(number: decimal, comma: true, roundMode: .ceil, fillZero: true, maxDigit: 9)
        let double: Double = -1437899900023.7777
        let doustr = formatter.format(number: double, comma: true, roundMode: .round, fillZero: false, maxDigit: 2)
        let float: Float = 4421.1424546
        let flostr = formatter.format(number: float, comma: true, roundMode: .round, fillZero: true, maxDigit: 6)
        
        print(decstr)
        print(doustr)
        print(flostr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        

    }

}

