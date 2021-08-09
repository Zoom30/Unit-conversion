//
//  LiquidVolumeUnitConversion.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 14/02/2021.
//

import Foundation
import RealmSwift
class LiquidUnitConversion {
    
    var accessToSettings : Results<Settings>?
    
    func ukGallonToLitre (ukGallonValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKGallon = Measurement(value: Double(ukGallonValue)!, unit: UnitVolume.imperialGallons)
        let result = assignedUKGallon.converted(to: UnitVolume.liters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukGallonToUKPint(ukGallonValue : String)-> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKGallon = Measurement(value: Double(ukGallonValue)!, unit: UnitVolume.imperialGallons)
        let result = assignedUKGallon.converted(to: UnitVolume.imperialPints)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukGallonToFluidOunce(ukGallonValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKGallon = Measurement(value: Double(ukGallonValue)!, unit: UnitVolume.imperialGallons)
        let result = assignedUKGallon.converted(to: UnitVolume.imperialFluidOunces)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukGallonToMillilitre(ukGallonValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKGallon = Measurement(value: Double(ukGallonValue)!, unit: UnitVolume.imperialGallons)
        let result = assignedUKGallon.converted(to: UnitVolume.milliliters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        
    }
    
    
    
    
    func litreToUKGallon (litre : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedLitreValue = Measurement(value: Double(litre)!, unit: UnitVolume.liters)
        let result = assignedLitreValue.converted(to: UnitVolume.imperialGallons)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func litreToUKPint (litre : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedLitreValue = Measurement(value: Double(litre)!, unit: UnitVolume.liters)
        let result = assignedLitreValue.converted(to: UnitVolume.imperialPints)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func litreToFluidOunce (litre : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedLitreValue = Measurement(value: Double(litre)!, unit: UnitVolume.liters)
        let result = assignedLitreValue.converted(to: UnitVolume.imperialFluidOunces)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func litreToMillilitre (litre : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedLitreValue = Measurement(value: Double(litre)!, unit: UnitVolume.liters)
        let result = assignedLitreValue.converted(to: UnitVolume.milliliters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    func ukPintToUKGallon (ukPintValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKPintValue = Measurement(value: Double(ukPintValue)!, unit: UnitVolume.imperialPints)
        let result = assignedUKPintValue.converted(to: UnitVolume.imperialGallons)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukPintToLitre (ukPintValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKPintValue = Measurement(value: Double(ukPintValue)!, unit: UnitVolume.imperialPints)
        let result = assignedUKPintValue.converted(to: UnitVolume.liters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukPintToFluidOunces (ukPintValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKPintValue = Measurement(value: Double(ukPintValue)!, unit: UnitVolume.imperialPints)
        let result = assignedUKPintValue.converted(to: UnitVolume.imperialFluidOunces)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func ukPintToMillilitre (ukPintValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedUKPintValue = Measurement(value: Double(ukPintValue)!, unit: UnitVolume.imperialPints)
        let result = assignedUKPintValue.converted(to: UnitVolume.milliliters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    func fluidOunceToUKGallon (fluidOunceValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedfluidOunceValue = Measurement(value: Double(fluidOunceValue)!, unit: UnitVolume.imperialFluidOunces)
        let result = assignedfluidOunceValue.converted(to: UnitVolume.imperialGallons)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func fluidOunceToLitre (fluidOunceValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedfluidOunceValue = Measurement(value: Double(fluidOunceValue)!, unit: UnitVolume.imperialFluidOunces)
        let result = assignedfluidOunceValue.converted(to: UnitVolume.liters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func fluidOunceToUKPint (fluidOunceValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedfluidOunceValue = Measurement(value: Double(fluidOunceValue)!, unit: UnitVolume.imperialFluidOunces)
        let result = assignedfluidOunceValue.converted(to: UnitVolume.imperialPints)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func fluidOunceToMillilitre (fluidOunceValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedfluidOunceValue = Measurement(value: Double(fluidOunceValue)!, unit: UnitVolume.imperialFluidOunces)
        let result = assignedfluidOunceValue.converted(to: UnitVolume.milliliters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    func millilitreToUKGallons (millilitreValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMillilitreValue = Measurement(value: Double(millilitreValue)!, unit: UnitVolume.milliliters)
        let result = assignedMillilitreValue.converted(to: UnitVolume.imperialGallons)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func millilitreToLitre (millilitreValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMillilitreValue = Measurement(value: Double(millilitreValue)!, unit: UnitVolume.milliliters)
        let result = assignedMillilitreValue.converted(to: UnitVolume.liters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func millilitreToUKPint (millilitreValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMillilitreValue = Measurement(value: Double(millilitreValue)!, unit: UnitVolume.milliliters)
        let result = assignedMillilitreValue.converted(to: UnitVolume.imperialPints)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func millilitreToFluidOunce (millilitreValue : String) -> String{
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMillilitreValue = Measurement(value: Double(millilitreValue)!, unit: UnitVolume.milliliters)
        let result = assignedMillilitreValue.converted(to: UnitVolume.imperialFluidOunces)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
   
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }
    
}
