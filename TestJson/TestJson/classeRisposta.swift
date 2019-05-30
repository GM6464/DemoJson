//
//  classeRisposta.swift
//  TestJson
//
//  Created by Modi Nuovi on 24/10/17.
//  Copyright © 2017 Modi Nuovi. All rights reserved.
//

import UIKit

public class classeRisposta: Codable
{
    var Esito : Bool  = false
    var Messaggio : String = ""
    var Dati : ClasseElenco
    
}
public class ClasseElenco: Codable
{
    var Elenco :[Localita]
    
    
}
public class Localita: Codable
{
    var LocID : Int  = 0
    var LocName : String = ""
    
}
