//
//  Temperature.swift
//  Temperature Converter
//
//  Created by David Jones on 2/16/22.
//

import Foundation

struct Temperature {
    var tempInFarenheit: Double
    var tempInCelcius: Double
    
    init(farenheit: Double) {
        tempInFarenheit = farenheit
        tempInCelcius = (tempInFarenheit - 32) * (5.0 / 9)
    }
    init(celcius: Double) {
        tempInCelcius = celcius
        tempInFarenheit = tempInCelcius * 9.0 / 5 + 32
    }
}
