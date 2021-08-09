//
//  SettingsViewController.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 27/02/2021.
//

import UIKit
import RealmSwift
class SettingsViewController: UIViewController {
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var sampleLabel: UILabel!
    
    var accessToSettings : Results<Settings>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
    }
    
    
    
    @IBAction func accuracySlider(_ sender: UISlider) {
        
        sliderValue.value = roundf(sliderValue.value)
        let sampleValue = 1234.51627
        let roundedAccuracy = "%.\(Int(sliderValue.value))f"
        sampleLabel.text = String(format: roundedAccuracy, sampleValue)
    }
    
    
    
    @IBAction func confirmAccuracyLevel(_ sender: UIButton) {
        
        let updatedDecimalValue = Settings()
        updatedDecimalValue.decimalPlaces = Int(sliderValue.value)
        if accessToSettings!.count == 0 {
            if let realm = try? Realm(){
                try! realm.write{
                    realm.add(updatedDecimalValue)
                    
                }
            }
        }else{
            let realm = try! Realm()
            let updated = realm.objects(Settings.self).first
            try! realm.write{
                updated?.decimalPlaces = Int(sliderValue.value)
            }
        }
    }
    
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }
    
    
}


