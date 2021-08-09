//
//  WeightUnitConversion.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 14/02/2021.
//

import Foundation
import RealmSwift
class WeightUnitConversion{
    
    var accessToSettings : Results<Settings>?
    
    //MARK: - Conversion from kg
    
    func kgToGram(kgValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let gram = (Float(kgValue)! * 1000.0)
        return String(format: "%.\(decimalPlaces)f", gram)
    }
    func kgToPound(kgValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let pound = (Float(kgValue)! * 2.205)
        return String(format: "%.\(decimalPlaces)f", pound)
    }
    func kgToOunce(kgValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let ounce = (Float(kgValue)! * 35.274)
        return String(format: "%.\(decimalPlaces)f", ounce)
    }
    func kgToStonePound(kgValue : String) -> (String, String) {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let stoneValue = Float(kgValue)! / 6.35029318
        let truncatedStoneValue = trunc(stoneValue)
        let stonePoundPoundValue = (stoneValue - truncatedStoneValue) * 14.0
        return (String(format: "%.\(decimalPlaces)f", truncatedStoneValue), String(format: "%.\(decimalPlaces)f", stonePoundPoundValue))
    }
    
    
    //MARK: - Conversion from gram
    
    func gtoKg(gValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let kg = (Float(gValue)! / 1000.0)
        return String(format: "%.\(decimalPlaces)f", kg)
    }
    func gToPound(gValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let pound = (Float(gValue)! * 0.0022046)
        return String(format: "%.\(decimalPlaces)f", pound)
    }
    func gToOunce(gValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let ounce = (Float(gValue)! / 28.35)
        return String(format: "%.\(decimalPlaces)f", ounce)
    }
    func gToStonePound(gValue : String) -> (String, String) {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let stoneValue = (Float(gValue)! / 6350.29318)
        let truncatedStoneValue = trunc(stoneValue)
        let stonePoundPoundValue = (stoneValue - truncatedStoneValue) * 14.0
        return (String(format: "%.\(decimalPlaces)f", truncatedStoneValue), String(format: "%.\(decimalPlaces)f", stonePoundPoundValue))
    }
    
    
    //MARK: - Conversion from pound
    
    func poundToKg(poundValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let kg = (Float(poundValue)! / 2.205)
        return String(format: "%.\(decimalPlaces)f", kg)
    }
    func poundToGram(poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
       let gram = (Float(poundValue)! * 453.592)
        return String(format: "%.\(decimalPlaces)f", gram)
    }
    func poundToOunce(poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let ounce = (Float(poundValue)! * 16)
        return String(format: "%.\(decimalPlaces)f", ounce)
    }
    func poundToStonePound(poundValue : String) -> (String, String) {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let stoneValue = (Float(poundValue)! / 14.0)
        let truncatedStoneValue = trunc(stoneValue)
        let stonePoundPoundValue = (stoneValue - truncatedStoneValue) * 14.0
        return (String(format: "%.\(decimalPlaces)f", truncatedStoneValue), String(format: "%.\(decimalPlaces)f", stonePoundPoundValue))
    }
    
    
    //MARK: - Conversion from Ounces
    
    func ounceToKg(ounceValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let kg = (Float(ounceValue)! / 35.274)
        return String(format: "%.\(decimalPlaces)f", kg)
    }
    func ounceToGrams(ounceValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let gram = (Float(ounceValue)! * 28.3495)
        return String(format: "%.\(decimalPlaces)f", gram)
    }
    func ounceToPounds(ounceValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let pounds = (Float(ounceValue)! / 16.0)
        return String(format: "%.\(decimalPlaces)f", pounds)
    }
    func ounceToStonePounds(ounceValue : String) -> (String, String) {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let stoneValue = (Float(ounceValue)! / 224.0)
        let truncatedStoneValue = trunc(stoneValue)
        let stonePoundPoundValue = (stoneValue - truncatedStoneValue) * 14.0
        return (String(format: "%.\(decimalPlaces)f", truncatedStoneValue), String(format: "%.\(decimalPlaces)f", stonePoundPoundValue))
    }
    
    
    //MARK: - Conversion from Stone-Pounds
    
    func spToKg(stoneValue : String, poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let tempStoneToKg = Float(stoneValue)! * 6.35029318
        let tempStonePoundPoundToKg = Float(poundValue)! * 0.45359237
        let kg = tempStoneToKg + tempStonePoundPoundToKg
        return String(format: "%.\(decimalPlaces)f", kg)
    }
    func spToGram(stoneValue : String, poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let tempStoneToG = Float(stoneValue)! * 6350.29318
        let tempStonePoundPoundToGram = Float(poundValue)! *  453.59237
        let gram = tempStoneToG + tempStonePoundPoundToGram
        return String(format: "%.\(decimalPlaces)f", gram)
    }
    func spToPound(stoneValue : String, poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let tempStoneToPound = Float(stoneValue)! * 14
        let tempStonePoundPoundToPound = Float(poundValue)!
        let pound = tempStoneToPound + tempStonePoundPoundToPound
        return String(format: "%.\(decimalPlaces)f", pound)
    }
    func spToOunce(stoneValue : String, poundValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let tempStoneToOunce = Float(stoneValue)! * 224.0
        let tempStonePoundPoundToOunce = Float(poundValue)! * 16.0
        let ounce = tempStoneToOunce + tempStonePoundPoundToOunce
        return String(format: "%.\(decimalPlaces)f", ounce)
    }
    
    
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }

}
