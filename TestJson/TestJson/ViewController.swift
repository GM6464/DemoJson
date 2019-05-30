//
//  ViewController.swift
//  TestJson
//
//  Created by Modi Nuovi on 24/10/17.
//  Copyright © 2017 Modi Nuovi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var TestoJson = """
{
    "Esito": true,
    "Messaggio": "got the locations!",
    "Dati": {
        "Elenco": [
            {
                "LocID": 1,
                "LocName": "Downtown"
            },
            {
                "LocID": 2,
                "LocName": "Uptown"
            },
            {
                "LocID": 3,
                "LocName": "Midtown"
            }
        ]
    }
}
"""
    var films = """
[
  {
    "Titolo": "Film1",
    "Descrizione": "Film molto bello prova 1 2 3 4",
    "Durata": 10,
    "Autore": "Autore film1",
    "Proiezione": "00/00/00-00:00:00",
    "Image": "linkImage"
  },
  {
    "Titolo": "Film2",
    "Descrizione": "Film molto bello prova 1 2 3 4",
    "Durata": 10,
    "Autore": "Autore film2",
    "Proiezione": "00/00/00-00:00:00",
    "Image": "linkImage"
  },
  {
    "Titolo": "Film3",
    "Descrizione": "Film molto bello prova 1 2 3 4",
    "Durata": 10,
    "Autore": "Autore film3",
    "Proiezione": "00/00/00-00:00:00",
    "Image": "linkImage"
  }
]
"""
    
    
    
    
    var locList: classeRisposta? = nil
    @IBAction func test(_ sender: Any)
    {
        
        let data = TestoJson.data(using: .utf8)!
        do {
         locList = try JSONDecoder().decode(classeRisposta.self, from: data )
            print(locList ?? "nulla")
        } catch let error {
            print(error)
        }
        
        
    }
    var mc: MiaClasse? = nil
    @IBAction func test2(_ sender: Any)
    {
        mc = MiaClasse.init()
        mc?.booleano = false
        mc?.datatime = Date.init(timeIntervalSinceNow: 0)
        mc?.decimale = 1222.3
        mc?.intero = 12345
        mc?.stringa = "pippo"
        
       
       for index in 1...9
       {
        mc?.array.append(index*index)
        }
        do {
            let a = try   JSONEncoder().encode(mc)
            print (String(data: a, encoding: .utf8) ?? "")
        }
        catch let error
        {
            print(error)
        }
        
        
    }
    class elenco: Encodable, Decodable
    {
        var films: [film]
    }
    class film: Encodable, Decodable
    {
        var Titolo: String
        var Descrizione: String
        var Durata: Int
        var Autore: String
        var Proiezione: String
        var Image: String
    }
    
    
    @IBAction func JtoClasse(_ sender: Any)
    {
        
        
        
        let data = films.data(using: .utf8)!
        do {
            let Lista = try JSONDecoder().decode([film].self, from: data )
            print(Lista )
        } catch let error {
            print(error)
        }
        
        
        
        
        
    }
    
}
/*
 {
 "stringa":"pippo",
 "booleano":false,
 "datatime":530575606.91161001,
 "intero":12345,
 "decimale":1222.3,
 "array":[
 1,
 4,
 9,
 16,
 25,
 36,
 49,
 64,
 81
 ]
 }
 */
