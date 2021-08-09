//
//  LiquidVolumeViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 12/02/2021.
//

import UIKit
import RealmSwift
class LiquidVolumeViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var liquidVolumeTextFieldArray: [UITextField]!
    
    var activeTextField = UITextField()
    
    var accessToLiquidVolumeSave : Results<LiquidVolumeSave>?
    let accessToConversions = LiquidUnitConversion()
 
    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()

        for everyTextField in liquidVolumeTextFieldArray {
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
    
    func resetLiquidTextFieldToZero (){
        for everyTextField in liquidVolumeTextFieldArray{
            everyTextField.text = "0"
        }
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        
        if liquidVolumeTextFieldArray[0] == activeTextField {
            
            if liquidVolumeTextFieldArray[0].text == "" || liquidVolumeTextFieldArray[0].text == "-" || liquidVolumeTextFieldArray[0].text!.filter({$0 == "."}).count > 1 || liquidVolumeTextFieldArray[0].text?.first == "."{
                resetLiquidTextFieldToZero()
            }
            liquidVolumeTextFieldArray[1].text = accessToConversions.ukGallonToLitre(ukGallonValue: sender.text!)
            liquidVolumeTextFieldArray[2].text = accessToConversions.ukGallonToUKPint(ukGallonValue: sender.text!)
            liquidVolumeTextFieldArray[3].text = accessToConversions.ukGallonToFluidOunce(ukGallonValue: sender.text!)
            liquidVolumeTextFieldArray[4].text = accessToConversions.ukGallonToMillilitre(ukGallonValue: sender.text!)
        }
        
        if liquidVolumeTextFieldArray[1] == activeTextField {
            if liquidVolumeTextFieldArray[1].text == "" || liquidVolumeTextFieldArray[1].text == "-" || liquidVolumeTextFieldArray[1].text!.filter({$0 == "."}).count > 1 || liquidVolumeTextFieldArray[1].text?.first == "."{
                resetLiquidTextFieldToZero()
            }
            liquidVolumeTextFieldArray[0].text = accessToConversions.litreToUKGallon(litre: sender.text!)
            liquidVolumeTextFieldArray[2].text = accessToConversions.litreToUKPint(litre: sender.text!)
            liquidVolumeTextFieldArray[3].text = accessToConversions.litreToFluidOunce(litre: sender.text!)
            liquidVolumeTextFieldArray[4].text = accessToConversions.litreToMillilitre(litre: sender.text!)
            
        }
        
        if liquidVolumeTextFieldArray[2] == activeTextField {
            if liquidVolumeTextFieldArray[2].text == "" || liquidVolumeTextFieldArray[2].text == "-" || liquidVolumeTextFieldArray[2].text!.filter({$0 == "."}).count > 1 || liquidVolumeTextFieldArray[2].text?.first == "."{
                resetLiquidTextFieldToZero()
            }
            liquidVolumeTextFieldArray[0].text = accessToConversions.ukPintToUKGallon(ukPintValue: sender.text!)
            liquidVolumeTextFieldArray[1].text = accessToConversions.ukPintToLitre(ukPintValue: sender.text!)
            liquidVolumeTextFieldArray[3].text = accessToConversions.ukPintToFluidOunces(ukPintValue: sender.text!)
            liquidVolumeTextFieldArray[4].text = accessToConversions.ukPintToMillilitre(ukPintValue: sender.text!)
            
        }
        
        
        if liquidVolumeTextFieldArray[3] == activeTextField {
            if liquidVolumeTextFieldArray [3].text == "" || liquidVolumeTextFieldArray[3].text == "-" || liquidVolumeTextFieldArray[3].text!.filter({$0 == "."}).count > 1 || liquidVolumeTextFieldArray[3].text?.first == "."{
                resetLiquidTextFieldToZero()
            }
            liquidVolumeTextFieldArray[0].text = accessToConversions.fluidOunceToUKGallon(fluidOunceValue: sender.text!)
            liquidVolumeTextFieldArray[1].text = accessToConversions.fluidOunceToLitre(fluidOunceValue: sender.text!)
            liquidVolumeTextFieldArray[2].text = accessToConversions.fluidOunceToUKPint(fluidOunceValue: sender.text!)
            liquidVolumeTextFieldArray[4].text = accessToConversions.fluidOunceToMillilitre(fluidOunceValue: sender.text!)
        }
        
        if liquidVolumeTextFieldArray[4] == activeTextField{
            if liquidVolumeTextFieldArray[4].text == "" || liquidVolumeTextFieldArray[4].text == "-" || liquidVolumeTextFieldArray[4].text!.filter({$0 == "."}).count > 1 || liquidVolumeTextFieldArray[4].text?.first == "."{
                resetLiquidTextFieldToZero()
            }
            liquidVolumeTextFieldArray[0].text = accessToConversions.millilitreToUKGallons(millilitreValue: sender.text!)
            liquidVolumeTextFieldArray[1].text = accessToConversions.millilitreToLitre(millilitreValue: sender.text!)
            liquidVolumeTextFieldArray[2].text = accessToConversions.millilitreToUKPint(millilitreValue: sender.text!)
            liquidVolumeTextFieldArray[3].text = accessToConversions.millilitreToFluidOunce(millilitreValue: sender.text!)
            
        }
    }
    
    
    //MARK: - save and history
    
    @IBAction func viewHistoryPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toLiquidVolumeHistory", sender: self)
    }
    
    @IBAction func savedPressed(_ sender: UIButton) {
        loadData()
        let liquidVolumeConverted = LiquidVolumeSave()
        liquidVolumeConverted.ukGallon = liquidVolumeTextFieldArray[0].text!
        liquidVolumeConverted.litre = liquidVolumeTextFieldArray[1].text!
        liquidVolumeConverted.ukPint = liquidVolumeTextFieldArray[2].text!
        liquidVolumeConverted.fluidOunce = liquidVolumeTextFieldArray[3].text!
        liquidVolumeConverted.millilitre = liquidVolumeTextFieldArray[4].text!
        
        if let realm = try? Realm(){
            try! realm.write{
                realm.add(liquidVolumeConverted)
            }
        }
    }
    
    
    //MARK: - loadData() method
    
    func loadData() {
        if let realm = try? Realm(){
            accessToLiquidVolumeSave = realm.objects(LiquidVolumeSave.self)
        }
    }
    

}
