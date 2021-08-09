//
//  WeightViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 12/02/2021.
//

import UIKit
import RealmSwift
class WeightViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var weightTextFieldArray: [UITextField]!
    
    var activeTextField = UITextField()
    var accessToWeightSave : Results<WeightSave>?
    let accessToConversions = WeightUnitConversion()
    
    //MARK: - viewDidLoad() method
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for everyTextField in weightTextFieldArray {
            everyTextField.delegate = self
            everyTextField.extendDecimalKeyboardWithoutNegative()
        }
        hideKeyboardWhenTappedAround()
        resizeViewOnKeyboardAppearDisappear()
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
    
    func resetWeightTextFieldToZero (){
        for everyTextField in weightTextFieldArray{
            everyTextField.text = "0"
        }
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if weightTextFieldArray[0] == activeTextField{
            if weightTextFieldArray[0].text == "" || weightTextFieldArray[0].text == "-" || weightTextFieldArray[0].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[0].text?.first == "."{
                resetWeightTextFieldToZero()
            }
            weightTextFieldArray[1].text = "\(accessToConversions.kgToGram(kgValue: sender.text!)) g"
            weightTextFieldArray[2].text = "\(accessToConversions.kgToPound(kgValue: sender.text!)) lb"
            weightTextFieldArray[3].text = "\(accessToConversions.kgToOunce(kgValue: sender.text!)) oz"
            weightTextFieldArray[4].text = "\(accessToConversions.kgToStonePound(kgValue: sender.text!).0) st"
            weightTextFieldArray[5].text = "\(accessToConversions.kgToStonePound(kgValue: sender.text!).1) lb"
        }
        if weightTextFieldArray[1] == activeTextField {
            if weightTextFieldArray[1].text == "" || weightTextFieldArray[1].text == "-" || weightTextFieldArray[1].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[1].text?.first == "."{
                resetWeightTextFieldToZero()
            }
            weightTextFieldArray[0].text = "\(accessToConversions.gtoKg(gValue: sender.text!)) kg"
            weightTextFieldArray[2].text = "\(accessToConversions.gToPound(gValue: sender.text!)) lb"
            weightTextFieldArray[3].text = "\(accessToConversions.gToOunce(gValue: sender.text!)) oz"
            weightTextFieldArray[4].text = "\(accessToConversions.gToStonePound(gValue: sender.text!).0) st"
            weightTextFieldArray[5].text = "\(accessToConversions.gToStonePound(gValue: sender.text!).1) lb"
        }
        if weightTextFieldArray[2] == activeTextField {
            if weightTextFieldArray[2].text == "" || weightTextFieldArray[2].text == "-" || weightTextFieldArray[2].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[2].text?.first == "."{
                resetWeightTextFieldToZero()
            }
            weightTextFieldArray[0].text = "\(accessToConversions.poundToKg(poundValue: sender.text!)) kg"
            weightTextFieldArray[1].text = "\(accessToConversions.poundToGram(poundValue: sender.text!)) g"
            weightTextFieldArray[3].text = "\(accessToConversions.poundToOunce(poundValue: sender.text!)) oz"
            weightTextFieldArray[4].text = "\(accessToConversions.poundToStonePound(poundValue: sender.text!).0) st"
            weightTextFieldArray[5].text = "\(accessToConversions.poundToStonePound(poundValue: sender.text!).1) lb"
        }
        
        if weightTextFieldArray[3] == activeTextField {
            if weightTextFieldArray[3].text == "" || weightTextFieldArray[3].text == "-" || weightTextFieldArray[3].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[3].text?.first == "."{
                resetWeightTextFieldToZero()
            }
            weightTextFieldArray[0].text = "\(accessToConversions.ounceToKg(ounceValue: sender.text!)) kg"
            weightTextFieldArray[1].text = "\(accessToConversions.ounceToGrams(ounceValue: sender.text!)) g"
            weightTextFieldArray[2].text = "\(accessToConversions.ounceToPounds(ounceValue: sender.text!)) lb"
            weightTextFieldArray[4].text = "\(accessToConversions.ounceToStonePounds(ounceValue: sender.text!).0) st"
            weightTextFieldArray[5].text = "\(accessToConversions.ounceToStonePounds(ounceValue: sender.text!).1) lb"
        }
        
        if weightTextFieldArray[5] == activeTextField {
            if weightTextFieldArray[5].text == "" || weightTextFieldArray[5].text == "-" || weightTextFieldArray[4].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[5].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[5].text?.first == "."{
                resetWeightTextFieldToZero()
            }
            else if weightTextFieldArray[4].text == "" || weightTextFieldArray[4].text == "-" || weightTextFieldArray[4].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[5].text!.filter({$0 == "."}).count > 1 || weightTextFieldArray[4].text?.first == "."{
                weightTextFieldArray[4].text = "0"
                weightTextFieldArray[0].text = "\(accessToConversions.spToKg(stoneValue: String(format: "%.1f", 0), poundValue: sender.text!)) kg"
                weightTextFieldArray[1].text = "\(accessToConversions.spToGram(stoneValue: String(format: "%.1f", 0), poundValue: sender.text!)) g"
                weightTextFieldArray[2].text = "\(accessToConversions.spToPound(stoneValue: String(format: "%.1f", 0), poundValue: sender.text!)) lb"
                weightTextFieldArray[3].text = "\(accessToConversions.spToOunce(stoneValue: String(format: "%.1f", 0), poundValue: sender.text!)) oz"
            }else{
                weightTextFieldArray[0].text = "\(accessToConversions.spToKg(stoneValue: weightTextFieldArray[4].text!, poundValue: sender.text!)) kg"
                weightTextFieldArray[1].text = "\(accessToConversions.spToGram(stoneValue: weightTextFieldArray[4].text!, poundValue: sender.text!)) g"
                weightTextFieldArray[2].text = "\(accessToConversions.spToPound(stoneValue: weightTextFieldArray[4].text!, poundValue: sender.text!)) lb"
                weightTextFieldArray[3].text = "\(accessToConversions.spToOunce(stoneValue: weightTextFieldArray[4].text!, poundValue: sender.text!)) oz"
                
            }
            
        }
    }
    
    
    
    
    
    
    //MARK: - Save and History buttons
    
    @IBAction func historyPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toWeightHistory", sender: self)
    }
    
    
    @IBAction func savePressed(_ sender: UIButton) {
        loadData()
        let weightConverted = WeightSave()
        weightConverted.kilograms = weightTextFieldArray[0].text!
        weightConverted.grams = weightTextFieldArray[1].text!
        weightConverted.pounds = weightTextFieldArray[2].text!
        weightConverted.ounces = weightTextFieldArray[3].text!
        weightConverted.stonePounds = weightTextFieldArray[4].text!
        weightConverted.poundStones = weightTextFieldArray[5].text!
        
        if let realm = try? Realm(){
            try! realm.write{
                realm.add(weightConverted)
            }
        }
    }
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToWeightSave = realm.objects(WeightSave.self)
        }
    }
    
    
}

