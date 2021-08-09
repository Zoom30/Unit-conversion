//
//  SpeedUnitConversion.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 14/02/2021.
//

import Foundation
import RealmSwift
class SpeedUnitConversion {
    
    var accessToSettings : Results<Settings>?
    
    func mpsToKph(mpsValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMpsValue = Measurement(value: Double(mpsValue)!, unit: UnitSpeed.metersPerSecond)
        let result = assignedMpsValue.converted(to: UnitSpeed.kilometersPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    func mpsTomilesph(mpsValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMpsValue = Measurement(value: Double(mpsValue)!, unit: UnitSpeed.metersPerSecond)
        let result = assignedMpsValue.converted(to: UnitSpeed.milesPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mpsToKnot(mpsValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMpsValue = Measurement(value: Double(mpsValue)!, unit: UnitSpeed.metersPerSecond)
        let result = assignedMpsValue.converted(to: UnitSpeed.knots)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    func kphToMps(kphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKphValue = Measurement(value: Double(kphValue)!, unit: UnitSpeed.kilometersPerHour)
        let result = assignedKphValue.converted(to: UnitSpeed.metersPerSecond)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kphToMilesph(kphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKphValue = Measurement(value: Double(kphValue)!, unit: UnitSpeed.kilometersPerHour)
        let result = assignedKphValue.converted(to: UnitSpeed.milesPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kphToKnot(kphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKphValue = Measurement(value: Double(kphValue)!, unit: UnitSpeed.kilometersPerHour)
        let result = assignedKphValue.converted(to: UnitSpeed.knots)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    
    
    
    func milesphToMps(milesphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMilesphValue = Measurement(value: Double(milesphValue)!, unit: UnitSpeed.milesPerHour)
        let result = assignedMilesphValue.converted(to: UnitSpeed.metersPerSecond)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func milesphToKph(milesphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMilesphValue = Measurement(value: Double(milesphValue)!, unit: UnitSpeed.milesPerHour)
        let result = assignedMilesphValue.converted(to: UnitSpeed.kilometersPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func milesphToKnot(milesphValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMilesphValue = Measurement(value: Double(milesphValue)!, unit: UnitSpeed.milesPerHour)
        let result = assignedMilesphValue.converted(to: UnitSpeed.knots)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    
    
    func knotsToMps(knotValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKnotValue = Measurement(value: Double(knotValue)!, unit: UnitSpeed.knots)
        let result = assignedKnotValue.converted(to: UnitSpeed.metersPerSecond)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func knotsToKph(knotValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKnotValue = Measurement(value: Double(knotValue)!, unit: UnitSpeed.knots)
        let result = assignedKnotValue.converted(to: UnitSpeed.kilometersPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func knotsToMilesph(knotValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKnotValue = Measurement(value: Double(knotValue)!, unit: UnitSpeed.knots)
        let result = assignedKnotValue.converted(to: UnitSpeed.milesPerHour)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }
}
