//
//  WeightHistoryViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 16/02/2021.
//

import UIKit
import RealmSwift
class WeightHistoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var firstRow: [UILabel]!
    @IBOutlet var secondRow: [UILabel]!
    @IBOutlet var thirdRow: [UILabel]!
    @IBOutlet var fourthRow: [UILabel]!
    @IBOutlet var lastRow: [UILabel]!
    
    @IBOutlet weak var conversionUnitHistoryPicker: UIPickerView!
    
    
    var accessToWeightSave : Results<WeightSave>?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        conversionUnitHistoryPicker.delegate = self
        conversionUnitHistoryPicker.dataSource = self
        
     
        
        //for first row
        firstRow[0].text = accessToWeightSave?.last?.kilograms
        firstRow[1].text = accessToWeightSave?.last?.grams
        firstRow[2].text = accessToWeightSave?.last?.pounds
        firstRow[3].text = accessToWeightSave?.last?.ounces
        firstRow[4].text = accessToWeightSave?.last?.stonePounds
        firstRow[5].text = accessToWeightSave?.last?.poundStones
        
        
        //for second row
        if accessToWeightSave!.count < 2{
            for label in secondRow {
                label.text = ""
            }
        }else{
            secondRow[0].text = accessToWeightSave?[accessToWeightSave!.count - 2].kilograms
            secondRow[1].text = accessToWeightSave?[accessToWeightSave!.count - 2].grams
            secondRow[2].text = accessToWeightSave?[accessToWeightSave!.count - 2].pounds
            secondRow[3].text = accessToWeightSave?[accessToWeightSave!.count - 2].ounces
            secondRow[4].text = accessToWeightSave?[accessToWeightSave!.count - 2].stonePounds
            secondRow[5].text = accessToWeightSave?[accessToWeightSave!.count - 2].poundStones
        }
        
        
        //for third row
        if accessToWeightSave!.count < 3{
            for label in thirdRow {
                label.text = ""
            }
        }else{
            thirdRow[0].text = accessToWeightSave?[accessToWeightSave!.count - 3].kilograms
            thirdRow[1].text = accessToWeightSave?[accessToWeightSave!.count - 3].grams
            thirdRow[2].text = accessToWeightSave?[accessToWeightSave!.count - 3].pounds
            thirdRow[3].text = accessToWeightSave?[accessToWeightSave!.count - 3].ounces
            thirdRow[4].text = accessToWeightSave?[accessToWeightSave!.count - 3].stonePounds
            thirdRow[5].text = accessToWeightSave?[accessToWeightSave!.count - 3].poundStones
        }
        
        //for fourth row
        if accessToWeightSave!.count < 4{
            for label in fourthRow {
                label.text = ""
            }
        }else{
            fourthRow[0].text = accessToWeightSave?[accessToWeightSave!.count - 4].kilograms
            fourthRow[1].text = accessToWeightSave?[accessToWeightSave!.count - 4].grams
            fourthRow[2].text = accessToWeightSave?[accessToWeightSave!.count - 4].pounds
            fourthRow[3].text = accessToWeightSave?[accessToWeightSave!.count - 4].ounces
            fourthRow[4].text = accessToWeightSave?[accessToWeightSave!.count - 4].stonePounds
            fourthRow[5].text = accessToWeightSave?[accessToWeightSave!.count - 4].poundStones
        }
        
        
        //for last row
        if accessToWeightSave!.count < 5{
            for label in lastRow {
                label.text = ""
            }
        }else{
            lastRow[0].text = accessToWeightSave?[accessToWeightSave!.count - 5].kilograms
            lastRow[1].text = accessToWeightSave?[accessToWeightSave!.count - 5].grams
            lastRow[2].text = accessToWeightSave?[accessToWeightSave!.count - 5].pounds
            lastRow[3].text = accessToWeightSave?[accessToWeightSave!.count - 5].ounces
            lastRow[4].text = accessToWeightSave?[accessToWeightSave!.count - 5].stonePounds
            lastRow[5].text = accessToWeightSave?[accessToWeightSave!.count - 5].poundStones
        }
        
        
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return UnitConversionHistoryPicker().unitConversionHistoryChoice.count
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
    
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToWeightSave = realm.objects(WeightSave.self)
        }
    }
    
}
