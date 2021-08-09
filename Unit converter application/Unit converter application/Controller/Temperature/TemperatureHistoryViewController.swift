//
//  TemperatureHistoryViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 16/02/2021.
//

import UIKit
import RealmSwift
class TemperatureHistoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var firstRow: [UILabel]!
    @IBOutlet var secondRow: [UILabel]!
    @IBOutlet var thirdRow: [UILabel]!
    @IBOutlet var fourthRow: [UILabel]!
    @IBOutlet var lastRow: [UILabel]!
    
    @IBOutlet weak var conversionUnitHistoryPicker: UIPickerView!
    
    var accessToTempSave : Results<TempSave>?
    var accessToSettings : Results<Settings>?
    let unitConversionHistory = UnitConversionHistoryPicker()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        
        
       
        print(accessToSettings!.first!.decimalPlaces)
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        conversionUnitHistoryPicker.delegate = self
        conversionUnitHistoryPicker.dataSource = self
        
        
        //for first row
        
        firstRow[0].text = accessToTempSave?.last?.celsius
        firstRow[1].text = accessToTempSave?.last?.kelvin
        firstRow[2].text = accessToTempSave?.last?.fahrenheit
        
        
        //for second row
        if accessToTempSave!.count < 2 {
            for label in secondRow {
                label.text = ""
            }
            
        }else{
            secondRow[0].text = accessToTempSave?[accessToTempSave!.count - 2].celsius
            secondRow[1].text = accessToTempSave?[accessToTempSave!.count - 2].kelvin
            secondRow[2].text = accessToTempSave?[accessToTempSave!.count - 2].fahrenheit
        }
        
        
        //for third row
        if accessToTempSave!.count < 3 {
            for label in thirdRow {
                label.text = ""
            }
            
        }else{
            thirdRow[0].text = accessToTempSave?[accessToTempSave!.count - 3].celsius
            thirdRow[1].text = accessToTempSave?[accessToTempSave!.count - 3].kelvin
            thirdRow[2].text = accessToTempSave?[accessToTempSave!.count - 3].fahrenheit
        }
        
        
        //for fourth row
        if accessToTempSave!.count < 4 {
            for label in fourthRow {
                label.text = ""
            }
            
        }else {
            fourthRow[0].text = accessToTempSave?[accessToTempSave!.count  - 4].celsius
            fourthRow[1].text = accessToTempSave?[accessToTempSave!.count  - 4].kelvin
            fourthRow[2].text = accessToTempSave?[accessToTempSave!.count  - 4].fahrenheit
        }
        
        
        
        //for last row
        if accessToTempSave!.count < 5 {
            for label in lastRow {
                label.text = ""
            }
        }else {
            lastRow[0].text = accessToTempSave?[accessToTempSave!.count  - 5].celsius
            lastRow[1].text = accessToTempSave?[accessToTempSave!.count  - 5].kelvin
            lastRow[2].text = accessToTempSave?[accessToTempSave!.count  - 5].fahrenheit
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unitConversionHistory.unitConversionHistoryChoice.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return unitConversionHistory.unitConversionHistoryChoice[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let temperature = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "temperature")
        let weight = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "weight")
        let liquidVolume = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "liquidVolume")
        let length = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "length")
        let speed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "speed")
        
            
            switch row {
            case 0:
                self.show(temperature, sender: self)
            case 1:
                self.show(weight, sender: self)
            case 2:
                self.show(liquidVolume, sender: self)
            case 3:
                self.show(length, sender: self)
            case 4:
                self.show(speed, sender: self)
            default:
                print("no view controller")
            }
        
    }
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToTempSave = realm.objects(TempSave.self)
            accessToSettings = realm.objects(Settings.self)
        }
    }
    
}
