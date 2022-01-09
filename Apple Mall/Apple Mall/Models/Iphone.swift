//
//  Iphone.swift
//  Apple Mall
//
//  Created by Дмитрий Чепанов on 05.01.2022.
//

import Foundation

struct IPhone {
    
    let model: String
    let color: String
    let memorySize: Int
    let displaySize: Double
    let price: Int
    
}

extension IPhone {
    static func getIPhones() -> [IPhone] {
        [
            IPhone(model: "iPhone 7", color: "black", memorySize: 32, displaySize: 4.7, price: 0),
            IPhone(model: "iPhone 7", color: "black", memorySize: 128, displaySize: 4.7, price: 0),
            IPhone(model: "iPhone 7 Plus", color: "black", memorySize: 32, displaySize: 5.5, price: 0),
            IPhone(model: "iPhone 7 Plus", color: "black", memorySize: 128, displaySize: 5.5, price: 0),
            IPhone(model: "iPhone 8", color: "black", memorySize: 32, displaySize: 4.7, price: 0),
            IPhone(model: "iPhone 8", color: "black", memorySize: 128, displaySize: 4.7, price: 0),
            IPhone(model: "iPhone 8 Plus", color: "black", memorySize: 32, displaySize: 5.5, price: 0),
            IPhone(model: "iPhone 8 Plus", color: "black", memorySize: 128, displaySize: 5.5, price: 0),
            IPhone(model: "iPhone X", color: "black", memorySize: 64, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone X", color: "black", memorySize: 256, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone XS", color: "black", memorySize: 64, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone XS", color: "black", memorySize: 256, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone XS", color: "black", memorySize: 512, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 64, displaySize: 6.5, price: 0),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 256, displaySize: 6.5, price: 0),
            IPhone(model: "iPhone XS Max", color: "black", memorySize: 512, displaySize: 6.5, price: 0),
            IPhone(model: "iPhone XR", color: "black", memorySize: 64, displaySize: 6.1, price: 0),
            IPhone(model: "iPhone XR", color: "black", memorySize: 128, displaySize: 6.1, price: 0),
            IPhone(model: "iPhone 11", color: "black", memorySize: 64, displaySize: 6.1, price: 0),
            IPhone(model: "iPhone 11", color: "black", memorySize: 128, displaySize: 6.1, price: 0),
            IPhone(model: "iPhone 11", color: "black", memorySize: 256, displaySize: 6.1, price: 0),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 64, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 128, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone 11 Pro", color: "black", memorySize: 256, displaySize: 5.8, price: 0),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 64, displaySize: 6.5, price: 0),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 256, displaySize: 6.5, price: 0),
            IPhone(model: "iPhone 11 Pro Max", color: "black", memorySize: 512, displaySize: 6.5, price: 0)
        ]
    }
}
// :-)
