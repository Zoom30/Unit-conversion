//
//  LengthHistoryViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 26/02/2021.
//

import UIKit
import RealmSwift
class LengthHistoryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var conversionUnitHistoryPicker: UIPickerView!
    
    @IBOutlet var firstRow: [UILabel]!
    @IBOutlet var secondRow: [UILabel]!
    @IBOutlet var thirdRow: [UILabel]!
    @IBOutlet var fourthRow: [UILabel]!
    @IBOutlet var lastRow: [UILabel]!
    
    var accessToLengthSave : Results<LengthSave>?
    
    
    //MARK: - viewDidLoad() method
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        conversionUnitHistoryPicker.delegate = self
        conversionUnitHistoryPicker.dataSource = self
        
        
        //for first row
        firstRow[0].text = accessToLengthSave?.last?.meter
        firstRow[1].text = accessToLengthSave?.last?.kilometer
        firstRow[2].text = accessToLengthSave?.last?.mile
        firstRow[3].text = accessToLengthSave?.last?.centimeter
        firstRow[4].text = accessToLengthSave?.last?.milllimeter
        firstRow[5].text = accessToLengthSave?.last?.yard
        firstRow[6].text = accessToLengthSave?.last?.inch
        
        
        //for second row
        if accessToLengthSave!.count < 2 {
            for label in secondRow {
                label.text = ""
            }
            
        }else{
            secondRow[0].text = accessToLengthSave?[accessToLengthSave!.count - 2].meter
            secondRow[1].text = accessToLengthSave?[accessToLengthSave!.count - 2].kilometer
            secondRow[2].text = accessToLengthSave?[accessToLengthSave!.count - 2].mile
            secondRow[3].text = accessToLengthSave?[accessToLengthSave!.count - 2].centimeter
            secondRow[4].text = accessToLengthSave?[accessToLengthSave!.count - 2].milllimeter
            secondRow[5].text = accessToLengthSave?[accessToLengthSave!.count - 2].yard
            secondRow[6].text = accessToLengthSave?[accessToLengthSave!.count - 2].inch
        }
        
        
        //for third row
        if accessToLengthSave!.count < 3 {
            for label in thirdRow {
                label.text = ""
            }
            
        }else{
            thirdRow[0].text = accessToLengthSave?[accessToLengthSave!.count - 3].meter
            thirdRow[1].text = accessToLengthSave?[accessToLengthSave!.count - 3].kilometer
            thirdRow[2].text = accessToLengthSave?[accessToLengthSave!.count - 3].mile
            thirdRow[3].text = accessToLengthSave?[accessToLengthSave!.count - 3].centimeter
            thirdRow[4].text = accessToLengthSave?[accessToLengthSave!.count - 3].milllimeter
            thirdRow[5].text = accessToLengthSave?[accessToLengthSave!.count - 3].yard
            thirdRow[6].text = accessToLengthSave?[accessToLengthSave!.count - 3].inch
        }
        
        
        //for fourth row
        if accessToLengthSave!.count < 4 {
            for label in fourthRow {
                label.text = ""
            }
            
        }else {
            fourthRow[0].text = accessToLengthSave?[accessToLengthSave!.count - 4].meter
            fourthRow[1].text = accessToLengthSave?[accessToLengthSave!.count - 4].kilometer
            fourthRow[2].text = accessToLengthSave?[accessToLengthSave!.count - 4].mile
            fourthRow[3].text = accessToLengthSave?[accessToLengthSave!.count - 4].centimeter
            fourthRow[4].text = accessToLengthSave?[accessToLengthSave!.count - 4].milllimeter
            fourthRow[5].text = accessToLengthSave?[accessToLengthSave!.count - 4].yard
            fourthRow[6].text = accessToLengthSave?[accessToLengthSave!.count - 4].inch
        }
        
        
        
        //for last row
        if accessToLengthSave!.count < 5 {
            for label in lastRow {
                label.text = ""
            }
        }else {
            lastRow[0].text = accessToLengthSave?[accessToLengthSave!.count - 5].meter
            lastRow[1].text = accessToLengthSave?[accessToLengthSave!.count - 5].kilometer
            lastRow[2].text = accessToLengthSave?[accessToLengthSave!.count - 5].mile
            lastRow[3].text = accessToLengthSave?[accessToLengthSave!.count - 5].centimeter
            lastRow[4].text = accessToLengthSave?[accessToLengthSave!.count - 5].milllimeter
            lastRow[5].text = accessToLengthSave?[accessToLengthSave!.count - 5].yard
            lastRow[6].text = accessToLengthSave?[accessToLengthSave!.count - 5].inch
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
    
    //MARK: - viewDidLoad() method
    
    func loadData() {
        if let realm = try? Realm(){
            accessToLengthSave = realm.objects(LengthSave.self)
        }
    }
    
}
