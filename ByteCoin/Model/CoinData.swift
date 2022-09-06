//
//  CoinData.swift
//  ByteCoin
//
//  Created by Mete Varol on 31.08.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData : Decodable {
    let asset_id_base : String
    let asset_id_quote : String
    let rate : Double
}
