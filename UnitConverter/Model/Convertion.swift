//
//  Convertion.swift
//  UnitConverter
//
//  Created by Дарья Тимофеева on 06.10.2021.
//

import Foundation

class Convertion {
    class func fromInchesToCms(forInches: Double) -> Double{
        return forInches * 2.54
    }
    class func fromCmsToInches(forCms: Double) -> Double {
        return forCms / 2.54
    }
}
