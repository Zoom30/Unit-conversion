//
//  LiquidVolumeHistoryViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 26/02/2021.
//

import UIKit
import RealmSwift
class LiquidVolumeHistoryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var firstRow: [UILabel]!
    @IBOutlet var secondRow: [UILabel]!
    @IBOutlet var thirdRow: [UILabel]!
    @IBOutlet var fourthRow: [UILabel]!
    @IBOutlet var lastRow: [UILabel]!
    
    @IBOutlet weak var conversionUnitHistoryPicker: UIPickerView!
    
    let unitConversionHistory = UnitConversionHistoryPicker()
    var accessToLiquidVolumeSave : Results<LiquidVolumeSave>?
    
    
    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        conversionUnitHistoryPicker.delegate = self
        conversionUnitHistoryPicker.dataSource = self
        
        //For first row
        firstRow[0].text = accessToLiquidVolumeSave?.last?.ukGallon
        firstRow[1].text = accessToLiquidVolumeSave?.last?.litre
        firstRow[2].text = accessToLiquidVolumeSave?.last?.ukPint
        firstRow[3].text = accessToLiquidVolumeSave?.last?.fluidOunce
        firstRow[4].text = accessToLiquidVolumeSave?.last?.millilitre
        
        
        //for second row
        if accessToLiquidVolumeSave!.count < 2 {
            for label in secondRow {
                label.text = ""
            }
            
        }else{
            secondRow[0].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 2].ukGallon
            secondRow[1].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 2].litre
            secondRow[2].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 2].ukPint
            secondRow[3].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 2].fluidOunce
            secondRow[4].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 2].millilitre
        }
        
        //for third row
        if accessToLiquidVolumeSave!.count < 3 {
            for label in thirdRow {
                label.text = ""
            }
            
        }else{
            thirdRow[0].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 3].ukGallon
            thirdRow[1].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 3].litre
            thirdRow[2].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 3].ukPint
            thirdRow[3].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 3].fluidOunce
            thirdRow[4].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 3].millilitre
        }
        
        
        //for fourth row
        if accessToLiquidVolumeSave!.count < 4 {
            for label in fourthRow {
                label.text = ""
            }
            
        }else{
            fourthRow[0].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 4].ukGallon
            fourthRow[1].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 4].litre
            fourthRow[2].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 4].ukPint
            fourthRow[3].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 4].fluidOunce
            fourthRow[4].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 4].millilitre
        }
        
        
        
        //for last row
        if accessToLiquidVolumeSave!.count < 5 {
            for label in lastRow {
                label.text = ""
            }
            
        }else{
            lastRow[0].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 5].ukGallon
            lastRow[1].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 5].litre
            lastRow[2].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 5].ukPint
            lastRow[3].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 5].fluidOunce
            lastRow[4].text = accessToLiquidVolumeSave?[accessToLiquidVolumeSave!.count - 5].millilitre
        }
    }
    
    
    
    //MARK: - history navigator picker view
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return unitConversionHistory.unitConversionHistoryChoice.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return UnitConversionHistoryPicker().unitConversionHistoryChoice[row]
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
    
    //MARK: - loadData() method
    
    func loadData(){
        if let realm = try? Realm(){
            accessToLiquidVolumeSave = realm.objects(LiquidVolumeSave.self)
        }
    }
    
}


