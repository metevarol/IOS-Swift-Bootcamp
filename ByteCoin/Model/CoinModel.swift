//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Mete Varol on 6.09.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    
    let bitcoinPrice : Double
    let currency : String
    
    var bitcoinPriceString : String {
        return String(format: "%.1f", bitcoinPrice)
    }
}
