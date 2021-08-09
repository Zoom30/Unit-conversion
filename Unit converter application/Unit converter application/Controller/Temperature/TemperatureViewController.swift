//
//  TemperatureViewViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 11/02/2021.
//

import UIKit
import RealmSwift

class TemperatureViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var tempTextFieldArray: [UITextField]!
    
    var activeTextField = UITextField()
    var accessToTempSave : Results<TempSave>?
    let accessToConversions = TemperatureConversion()
   
    var tabBarMoved = false
    var keyboardHeight = CGFloat()
    //MARK: - viewDidLoad() method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        debugPrint(Realm.Configuration.defaultConfiguration.fileURL!)
        for everyTextField in tempTextFieldArray {
            everyTextField.delegate = self
            everyTextField.extendDecimalKeyboardWithExtras()
        }
        hideKeyboardWhenTappedAround()
        resizeViewOnKeyboardAppearDisappear()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    
    //MARK: - System Keyboard handlers
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    //MARK: - textField Editing Changed for auto-calculation
    
    func resetTempTextFieldToZero (){
        for everyTextField in tempTextFieldArray{
            everyTextField.text = "0"
        }
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if tempTextFieldArray[0] == activeTextField{
            if tempTextFieldArray[0].text == "" || tempTextFieldArray[0].text == "-" || tempTextFieldArray[0].text!.filter({$0 == "."}).count > 1 || tempTextFieldArray[0].text?.first == "."{
                resetTempTextFieldToZero()
            }
            tempTextFieldArray[1].text = accessToConversions.celsiusToKelvin(celsiusValue: sender.text!)
            tempTextFieldArray[2].text = accessToConversions.celsiusToFahrenheit(celsiusValue: sender.text!)
        }
        if tempTextFieldArray[1] == activeTextField {
            if tempTextFieldArray[1].text == "" || tempTextFieldArray[1].text == "-" || tempTextFieldArray[1].text!.filter({$0 == "."}).count > 1 || tempTextFieldArray[1].text?.first == "."{
                resetTempTextFieldToZero()
            }
            tempTextFieldArray[0].text = accessToConversions.kelvinToCelsius(kelvinValue: sender.text!)
            tempTextFieldArray[2].text = accessToConversions.kelvinToFahrenheit(kelvinValue: sender.text!)
        }
        if tempTextFieldArray[2] == activeTextField {
            if tempTextFieldArray[2].text == "" || tempTextFieldArray[2].text == "-" || tempTextFieldArray[2].text!.filter({$0 == "."}).count > 1 || tempTextFieldArray[2].text?.first == "."{
                resetTempTextFieldToZero()
            }
            tempTextFieldArray[1].text = accessToConversions.fahrenheitToKelvin(fahrenheitValue: sender.text!)
            tempTextFieldArray[0].text = accessToConversions.fahrenheitToCelsius(fahrenheitValue: sender.text!)
        }
        
    }
    
    
    //MARK: - Save and History buttons
    
    @IBAction func viewHistory(_ sender: UIButton) {
        performSegue(withIdentifier: "goToTemperatureHistory", sender: self)
        
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        loadData()
        let tempConverted = TempSave()
        tempConverted.celsius = tempTextFieldArray[0].text!
        tempConverted.kelvin = tempTextFieldArray[1].text!
        tempConverted.fahrenheit = tempTextFieldArray[2].text!
        
        if let realm = try? Realm(){
            try! realm.write{
                realm.add(tempConverted)
            }
        }
    }
    
    func loadData(){
        if let realm = try? Realm(){
            accessToTempSave = realm.objects(TempSave.self)
          
        }
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        
//        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
//            self.keyboardHeight = keyboardSize.origin.y - keyboardSize.height - (self.tabBarController?.tabBar.frame.height)!
//
//        }
//        tabBarMoved = true
//        var tabBarFrame: CGRect = (self.tabBarController?.tabBar.frame)!
//        tabBarFrame.origin.y = self.keyboardHeight
//        UIView.animate(withDuration: 0.25, animations: {() -> Void in
//
//            self.tabBarController?.tabBar.frame = tabBarFrame
//
//        })
    }

    
}


