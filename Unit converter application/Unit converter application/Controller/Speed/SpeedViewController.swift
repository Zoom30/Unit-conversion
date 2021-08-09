//
//  SpeedViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 12/02/2021.
//

import UIKit
import RealmSwift
class SpeedViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var speedTextFieldArray: [UITextField]!
    
    var accessToSpeedSave : Results<SpeedSave>?
    var activeTextField = UITextField()
    let accessToConversions = SpeedUnitConversion()
    
    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        for everyTextField in speedTextFieldArray {
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
    
    func resetSpeedTextFieldToZero (){
        for everyTextField in speedTextFieldArray{
            everyTextField.text = "0"
        }
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        
        if speedTextFieldArray[0] == activeTextField {
            if speedTextFieldArray[0].text == "" || speedTextFieldArray[0].text == "-" || speedTextFieldArray[0].text!.filter({$0 == "."}).count > 1 || speedTextFieldArray[0].text?.first == "."{
                resetSpeedTextFieldToZero()
            }
            speedTextFieldArray[1].text = accessToConversions.mpsToKph(mpsValue: sender.text!)
            speedTextFieldArray[2].text = accessToConversions.mpsTomilesph(mpsValue: sender.text!)
            speedTextFieldArray[3].text = accessToConversions.mpsToKnot(mpsValue: sender.text!)
        }
        
        if speedTextFieldArray[1] == activeTextField {
            if speedTextFieldArray[1].text == "" || speedTextFieldArray[1].text == "-" || speedTextFieldArray[1].text!.filter({$0 == "."}).count > 1 || speedTextFieldArray[1].text?.first == "."{
                resetSpeedTextFieldToZero()
            }
            speedTextFieldArray[0].text = accessToConversions.kphToMps(kphValue: sender.text!)
            speedTextFieldArray[2].text = accessToConversions.kphToMilesph(kphValue: sender.text!)
            speedTextFieldArray[3].text = accessToConversions.kphToKnot(kphValue: sender.text!)
        }
        
        if speedTextFieldArray[2] == activeTextField {
            if speedTextFieldArray[2].text == "" || speedTextFieldArray[2].text == "-" || speedTextFieldArray[2].text!.filter({$0 == "."}).count > 1 || speedTextFieldArray[2].text?.first == "."{
                resetSpeedTextFieldToZero()
            }
            speedTextFieldArray[0].text = accessToConversions.milesphToMps(milesphValue: sender.text!)
            speedTextFieldArray[1].text = accessToConversions.milesphToKph(milesphValue: sender.text!)
            speedTextFieldArray[3].text = accessToConversions.milesphToKnot(milesphValue: sender.text!)
            
        }
        if speedTextFieldArray[3] == activeTextField {
            if speedTextFieldArray[3].text == "" || speedTextFieldArray[3].text == "-" || speedTextFieldArray[3].text!.filter({$0 == "."}).count > 1 || speedTextFieldArray[3].text?.first == "."{
                resetSpeedTextFieldToZero()
            }
            
            speedTextFieldArray[0].text = accessToConversions.knotsToMps(knotValue: sender.text!)
            speedTextFieldArray[1].text = accessToConversions.knotsToKph(knotValue: sender.text!)
            speedTextFieldArray[2].text = accessToConversions.knotsToMilesph(knotValue: sender.text!)
        }
        
    }
    
    
    //MARK: - Save and History
    
    @IBAction func viewHistoryPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toSpeedHistory", sender: self)
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        loadData()
        let speedConverted = SpeedSave()
        speedConverted.mps = speedTextFieldArray[0].text!
        speedConverted.kmph = speedTextFieldArray[1].text!
        speedConverted.mips = speedTextFieldArray[2].text!
        speedConverted.knot = speedTextFieldArray[3].text!
        if let realm = try? Realm(){
            try! realm.write{
                realm.add(speedConverted)
            }
        }
        
    }
    
    
    //MARK: - loadData() method
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSpeedSave = realm.objects(SpeedSave.self)
        }
    }

}
