//
//  Item.swift
//  eggplant-brownie
//
//  Created by Andriu Felipe Coelho on 16/03/19.
//  Copyright © 2019 Alura. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    // MARK: - Atributos
    
    let nome: String
    let calorias: Double
    
    // MARK: - Init
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
