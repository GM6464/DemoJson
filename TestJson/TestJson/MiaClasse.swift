//
//  MiaClasse.swift
//  TestJson
//
//  Created by Modi Nuovi on 24/10/17.
//  Copyright © 2017 Modi Nuovi. All rights reserved.
//

import UIKit

class MiaClasse: Codable
{
    var booleano: Bool
    var datatime: Date
    var stringa: String
    var intero: Int
    var decimale: Decimal
    var array: [Int]
    
    init()
{
      booleano = false
    datatime = Date.init(timeIntervalSinceNow: 0)
    stringa = ""
    intero = 0
    decimale = 0
    array = []
    }
    
}

