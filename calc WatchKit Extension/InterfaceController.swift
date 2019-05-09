//
//  InterfaceController.swift
//  calc WatchKit Extension
//
//  Created by Euler Rithiele Alvarenga on 5/7/19.
//  Copyright © 2019 Euler Rithiele Alvarenga. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var orangeBtn: WKInterfaceButton!
    
    
    @IBOutlet weak var label: WKInterfaceLabel!
    var someValue: Int = 0
    

    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        someValue = 0
    }
    

    @IBAction func btnPlus() {
        someValue += 1
        self.updateLabel()
        WKInterfaceDevice.current().play(.click)
    }
    
    @IBAction func minusButton() {
        someValue -= 1
        self.updateLabel()
        WKInterfaceDevice.current().play(.success)
    }
    
    @IBAction func resetCounter() {
        someValue = 0
        self.updateLabel()
        WKInterfaceDevice.current().play(.stop)
    }
    
    func updateLabel(){
        self.label.setText("\(someValue)")
    }
}


