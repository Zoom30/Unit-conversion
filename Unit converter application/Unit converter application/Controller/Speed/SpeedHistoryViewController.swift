//
//  SpeedHistoryViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 26/02/2021.
//

import UIKit
import RealmSwift

class SpeedHistoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var firstRow: [UILabel]!
    @IBOutlet var secondRow: [UILabel]!
    @IBOutlet var thirdRow: [UILabel]!
    @IBOutlet var fourthRow: [UILabel]!
    @IBOutlet var lastRow: [UILabel]!
    
    @IBOutlet weak var conversionUnitHistoryPicker: UIPickerView!
 
    var accessToSpeedSave : Results<SpeedSave>?
    
    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        conversionUnitHistoryPicker.delegate = self
        conversionUnitHistoryPicker.dataSource = self
        
        
        //for first row
        firstRow[0].text = accessToSpeedSave?.last?.mps
        firstRow[1].text = accessToSpeedSave?.last?.kmph
        firstRow[2].text = accessToSpeedSave?.last?.mips
        firstRow[3].text = accessToSpeedSave?.last?.knot
        
        
        
        //for second row
        if accessToSpeedSave!.count < 2 {
            for label in secondRow {
                label.text = ""
            }
            
        }else{
            secondRow[0].text = accessToSpeedSave?[accessToSpeedSave!.count - 2].mps
            secondRow[1].text = accessToSpeedSave?[accessToSpeedSave!.count - 2].kmph
            secondRow[2].text = accessToSpeedSave?[accessToSpeedSave!.count - 2].mips
            secondRow[3].text = accessToSpeedSave?[accessToSpeedSave!.count - 2].knot
        }
        
        
        //for third row
        if accessToSpeedSave!.count < 3 {
            for label in thirdRow {
                label.text = ""
            }
            
        }else{
            thirdRow[0].text = accessToSpeedSave?[accessToSpeedSave!.count - 3].mps
            thirdRow[1].text = accessToSpeedSave?[accessToSpeedSave!.count - 3].kmph
            thirdRow[2].text = accessToSpeedSave?[accessToSpeedSave!.count - 3].mips
            thirdRow[3].text = accessToSpeedSave?[accessToSpeedSave!.count - 3].knot
        }
        
        
        //for fourth row
        if accessToSpeedSave!.count < 4 {
            for label in fourthRow {
                label.text = ""
            }
            
        }else {
            fourthRow[0].text = accessToSpeedSave?[accessToSpeedSave!.count - 4].mps
            fourthRow[1].text = accessToSpeedSave?[accessToSpeedSave!.count - 4].kmph
            fourthRow[2].text = accessToSpeedSave?[accessToSpeedSave!.count - 4].mips
            fourthRow[3].text = accessToSpeedSave?[accessToSpeedSave!.count - 4].knot
        }
        
        
        
        //for last row
        if accessToSpeedSave!.count < 5 {
            for label in lastRow {
                label.text = ""
            }
        }else {
            lastRow[0].text = accessToSpeedSave?[accessToSpeedSave!.count - 5].mps
            lastRow[1].text = accessToSpeedSave?[accessToSpeedSave!.count - 5].kmph
            lastRow[2].text = accessToSpeedSave?[accessToSpeedSave!.count - 5].mips
            lastRow[3].text = accessToSpeedSave?[accessToSpeedSave!.count - 5].knot
        }
        
    }
    
    
    //MARK: - history navigator picker view
    
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
    
    //MARK: - loadData() method
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSpeedSave = realm.objects(SpeedSave.self)
        }
    }
    
}
