//
//  LengthViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 12/02/2021.
//

import UIKit
import RealmSwift
class LengthViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var lengthTextFieldArray: [UITextField]!

    var activeTextField = UITextField()

    var accessToLengthSave : Results<LengthSave>?
    let accessToConversions = LengthUnitConversion()


    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()

        for everyTextField in lengthTextFieldArray {
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

    func resetLengthTextFieldToZero (){
        for everyTextField in lengthTextFieldArray{
            everyTextField.text = "0"
        }
    }


    @IBAction func editingChanged(_ sender: UITextField) {
        if lengthTextFieldArray[0] == activeTextField {
            if lengthTextFieldArray[0].text == "" || lengthTextFieldArray[0].text == "-" || lengthTextFieldArray[0].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[0].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[1].text = accessToConversions.metreToKm(meterValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.metreToMile(meterValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.metreToCm(meterValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.metreToMm(meterValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.metreToYard(meterValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.metreToInch(meterValue: sender.text!)
        }


        if lengthTextFieldArray[1] == activeTextField{
            if lengthTextFieldArray[1].text == "" || lengthTextFieldArray[1].text == "-" || lengthTextFieldArray[1].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[1].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.kmToMeter(kmValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.kmToMile(kmValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.kmToCm(kmValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.kmToMm(kmValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.kmToYard(kmValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.kmToInch(kmValue: sender.text!)
        }


        if lengthTextFieldArray [2] == activeTextField {
            if lengthTextFieldArray[2].text == "" || lengthTextFieldArray[2].text == "-" || lengthTextFieldArray[2].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[2].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.mileToMeter(mileValue: sender.text!)
            lengthTextFieldArray[1].text = accessToConversions.mileToKm(mileValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.mileToCm(mileValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.mileToMm(mileValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.mileToYard(mileValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.mileToInch(mileValue: sender.text!)

        }

        if lengthTextFieldArray[3] == activeTextField {
            if lengthTextFieldArray[3].text == "" || lengthTextFieldArray[3].text == "-" || lengthTextFieldArray[3].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[3].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.cmToMeter(cmValue: sender.text!)
            lengthTextFieldArray[1].text = accessToConversions.cmToKm(cmValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.cmToMile(cmValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.cmToMm(cmValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.cmToYard(cmValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.cmToInch(cmValue: sender.text!)
        }

        if lengthTextFieldArray[4] == activeTextField {
            if lengthTextFieldArray[4].text == "" || lengthTextFieldArray[4].text == "-" || lengthTextFieldArray[4].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[4].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.mmToMeter(mmValue: sender.text!)
            lengthTextFieldArray[1].text = accessToConversions.mmToKm(mmValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.mmToMile(mmValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.mmToCm(mmValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.mmToYard(mmValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.mmToInch(mmValue: sender.text!)
        }

        if lengthTextFieldArray[5] == activeTextField {
            if lengthTextFieldArray[5].text == "" || lengthTextFieldArray[5].text == "-" || lengthTextFieldArray[5].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[5].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.yardToMeter(yardValue: sender.text!)
            lengthTextFieldArray[1].text = accessToConversions.yardToKm(yardValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.yardToMile(yardValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.yardToCm(yardValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.yardToMm(yardValue: sender.text!)
            lengthTextFieldArray[6].text = accessToConversions.yardToInch(yardValue: sender.text!)

        }



        if lengthTextFieldArray[6] == activeTextField {
            if lengthTextFieldArray[6].text == "" || lengthTextFieldArray[6].text == "-" || lengthTextFieldArray[6].text!.filter({$0 == "."}).count > 1 || lengthTextFieldArray[6].text?.first == "."{
                resetLengthTextFieldToZero()
            }
            lengthTextFieldArray[0].text = accessToConversions.inchToMeter(inchValue: sender.text!)
            lengthTextFieldArray[1].text = accessToConversions.inchToKm(inchValue: sender.text!)
            lengthTextFieldArray[2].text = accessToConversions.inchToMile(inchValue: sender.text!)
            lengthTextFieldArray[3].text = accessToConversions.inchToCm(inchValue: sender.text!)
            lengthTextFieldArray[4].text = accessToConversions.inchToMm(inchValue: sender.text!)
            lengthTextFieldArray[5].text = accessToConversions.inchToYard(inchValue: sender.text!)
        }

    }

    
    //MARK: - Save and History buttons
    
    @IBAction func viewHistoryPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toLengthHistory", sender: self)
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        loadData()
        let lengthConverted = LengthSave()
        lengthConverted.meter = lengthTextFieldArray[0].text!
        lengthConverted.kilometer = lengthTextFieldArray[1].text!
        lengthConverted.mile = lengthTextFieldArray[2].text!
        lengthConverted.centimeter = lengthTextFieldArray[3].text!
        lengthConverted.milllimeter = lengthTextFieldArray[4].text!
        lengthConverted.yard = lengthTextFieldArray[5].text!
        lengthConverted.inch = lengthTextFieldArray[6].text!
        
        if let realm = try? Realm(){
            try! realm.write{
                realm.add(lengthConverted)
            }
        }
        
        
    }
    
    
    
    
    
    //MARK: - loadData() method

    func loadData() {
        if let realm = try? Realm(){
            accessToLengthSave = realm.objects(LengthSave.self)
        }

    }


}
