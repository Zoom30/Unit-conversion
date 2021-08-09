//
//  LengthUnitConversion.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 14/02/2021.
//

import Foundation
import RealmSwift
class LengthUnitConversion{
    
    var accessToSettings : Results<Settings>?
    
    //MARK: - Converions from Meters
    
    func metreToKm(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func metreToMile(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func metreToCm(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func metreToMm(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func metreToYard(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func metreToInch(meterValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMeterValue = Measurement(value: Double(meterValue)!, unit: UnitLength.meters)
        let result = assignedMeterValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    //MARK: - Conversion from kilometers
    
    func kmToMeter(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kmToMile(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kmToCm(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kmToMm(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kmToYard(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func kmToInch(kmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKmValue = Measurement(value: Double(kmValue)!, unit: UnitLength.kilometers)
        let result = assignedKmValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    
    //MARK: - Conversion from Miles
    
    func mileToMeter(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mileToKm(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mileToCm(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mileToMm(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mileToYard(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mileToInch(mileValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMileValue = Measurement(value: Double(mileValue)!, unit: UnitLength.miles)
        let result = assignedMileValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    //MARK: - Conversion from Centimeters
    
    func cmToMeter(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func cmToKm(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func cmToMile(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func cmToMm(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func cmToYard(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func cmToInch(cmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCmValue = Measurement(value: Double(cmValue)!, unit: UnitLength.centimeters)
        let result = assignedCmValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    //MARK: - Conversion from Millimeters
    
    func mmToMeter(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mmToKm(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mmToMile(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mmToCm(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mmToYard(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func mmToInch(mmValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedMmValue = Measurement(value: Double(mmValue)!, unit: UnitLength.millimeters)
        let result = assignedMmValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    //MARK: - Conversion from Yards
    
    func yardToMeter(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func yardToKm(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func yardToMile(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func yardToCm(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func yardToMm(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func yardToInch(yardValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedYardValue = Measurement(value: Double(yardValue)!, unit: UnitLength.yards)
        let result = assignedYardValue.converted(to: UnitLength.inches)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    
    
    
    //MARK: - Conversion from Inches
    func inchToMeter(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.meters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func inchToKm(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.kilometers)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func inchToMile(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.miles)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func inchToCm(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.centimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func inchToMm(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.millimeters)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    func inchToYard(inchValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedInchValue = Measurement(value: Double(inchValue)!, unit: UnitLength.inches)
        let result = assignedInchValue.converted(to: UnitLength.yards)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
    }
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }
    
}
