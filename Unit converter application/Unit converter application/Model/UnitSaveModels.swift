//
//  TempSaveModel.swift
//  Unit converter application
//
//  Created by Daniel Ghebrat on 24/02/2021.
//

import Foundation
import RealmSwift

class TempSave: Object {
    @objc dynamic var celsius : String = ""
    @objc dynamic var kelvin : String = ""
    @objc dynamic var fahrenheit : String = ""
}
class WeightSave: Object {
    @objc dynamic var kilograms : String = ""
    @objc dynamic var grams : String = ""
    @objc dynamic var pounds : String = ""
    @objc dynamic var ounces : String = ""
    @objc dynamic var stonePounds : String = ""
    @objc dynamic var poundStones : String = ""
}
class LiquidVolumeSave: Object{
    @objc dynamic var ukGallon : String = ""
    @objc dynamic var litre : String = ""
    @objc dynamic var ukPint : String = ""
    @objc dynamic var fluidOunce : String = ""
    @objc dynamic var millilitre : String = ""
}
class LengthSave: Object{
    @objc dynamic var meter : String = ""
    @objc dynamic var kilometer : String = ""
    @objc dynamic var mile : String = ""
    @objc dynamic var centimeter : String = ""
    @objc dynamic var milllimeter : String = ""
    @objc dynamic var yard : String = ""
    @objc dynamic var inch : String = ""
}
class SpeedSave: Object{
    @objc dynamic var mps : String = ""
    @objc dynamic var kmph : String = ""
    @objc dynamic var mips : String = ""
    @objc dynamic var knot : String = ""
   
}



