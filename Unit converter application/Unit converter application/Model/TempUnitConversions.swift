//
//  Conversions.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 14/02/2021.
//

import Foundation
import RealmSwift
class TemperatureConversion{
    
    var accessToSettings : Results<Settings>?
    
    func celsiusToFahrenheit (celsiusValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCelsiusValue = Measurement(value: Double(celsiusValue)!, unit: UnitTemperature.celsius)
        let result = assignedCelsiusValue.converted(to: UnitTemperature.fahrenheit)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        //        let fahrenheit = (Float(celsiusValue)! * 1.8) + 32.0
        //        return String(fahrenheit)
    }
    
    func celsiusToKelvin (celsiusValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedCelsiusValue = Measurement(value: Double(celsiusValue)!, unit: UnitTemperature.celsius)
        let result = assignedCelsiusValue.converted(to: UnitTemperature.kelvin)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        
        //        let kelvin = (Float(celsiusValue)! + 273.15)
        //        return String(kelvin)
    }
    func kelvinToCelsius (kelvinValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKelvinValue = Measurement(value: Double(kelvinValue)!, unit: UnitTemperature.kelvin)
        let result = assignedKelvinValue.converted(to: UnitTemperature.celsius)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        
        //        let celsius = (Float(kelvinValue)! - 273.15)
        //        return String(celsius)
    }
    
    func kelvinToFahrenheit (kelvinValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedKelvinValue = Measurement(value: Double(kelvinValue)!, unit: UnitTemperature.kelvin)
        let result = assignedKelvinValue.converted(to: UnitTemperature.fahrenheit)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        
        //        let fahrenheit = ((Float(kelvinValue)! - 273.15) * 5.0/9.0 + 32)
        //        return String(fahrenheit)
    }
    func fahrenheitToCelsius (fahrenheitValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedFahrenheitValue  = Measurement(value: Double(fahrenheitValue)!, unit: UnitTemperature.fahrenheit)
        let result = assignedFahrenheitValue.converted(to: UnitTemperature.celsius)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        //        let celsius = ((Float(fahrenheitValue)! - 32.0) * 5.0/9.0)
        //        return String(celsius)
    }
    
    func fahrenheitToKelvin (fahrenheitValue : String) -> String {
        loadData()
        let decimalPlaces = accessToSettings!.first!.decimalPlaces
        let measurementFormatter = MeasurementFormatter()
        let n = NumberFormatter()
        n.maximumFractionDigits = decimalPlaces
        measurementFormatter.numberFormatter = n
        measurementFormatter.unitOptions = .providedUnit
        measurementFormatter.unitStyle = .medium
        let assignedFahrenheitValue = Measurement(value: Double(fahrenheitValue)!, unit: UnitTemperature.fahrenheit)
        let result = assignedFahrenheitValue.converted(to: UnitTemperature.kelvin)
        let stringResult = measurementFormatter.string(for: result)!
        return stringResult
        //        let kelvin = ((Float(fahrenheitValue)! - 32.0) * 5.0/9.0 + 273.15)
        //        return String(kelvin)
    }
    
    
    
    func loadData(){
        if let realm = try? Realm(){
            accessToSettings = realm.objects(Settings.self)
        }
    }
}

