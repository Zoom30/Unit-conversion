//
//  customisedDecimalKeyboard.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 13/02/2021.
//

import Foundation
import UIKit
extension UITextField {
   
    
    @IBInspectable var extrasAccessories: Bool{
        get{
            return self.extrasAccessories
        }
        set (hasDone) {
            if hasDone{
                extendDecimalKeyboardWithExtras()
            }
        }
    }
    
    //to add Done and -(negative sign) to the keyboard
    func extendDecimalKeyboardWithExtras(){
        let extrasToolBar : UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        extrasToolBar.barStyle = .default
        extrasToolBar.barTintColor = .lightGray
        extrasToolBar.tintColor = .systemGreen
        let flexiLength = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let negative = UIBarButtonItem(title: "(-) Negative", style: .plain, target: self, action: #selector(negativeButton))
        negative.tintColor = .red
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButton))
        let items = [flexiLength, negative, done]
        extrasToolBar.items = items
        extrasToolBar.sizeToFit()
        self.inputAccessoryView = extrasToolBar
    }
    func extendDecimalKeyboardWithoutNegative(){
        let extrasToolBar : UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        extrasToolBar.barStyle = .default
        extrasToolBar.barTintColor = .lightGray
        extrasToolBar.tintColor = .systemGreen
        let flexiLength = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButton))
        let items = [flexiLength, done]
        extrasToolBar.items = items
        extrasToolBar.sizeToFit()
        self.inputAccessoryView = extrasToolBar
    }
    @objc func negativeButton() {
        if self.text == "" {
            self.text = "0"
            let newValue =  Float(self.text!)! * -1
            let convertedToString = String (newValue)
            self.text = ""
            self.text?.append(convertedToString)
        }
        else{
            let newValue = Float (self.text!)! * -1
            let convertedToString = String (newValue)
            self.text = ""
            self.text?.append(convertedToString)
        }
        
    }
    @objc func doneButton() {
        self.resignFirstResponder()
    }
    

    
}



