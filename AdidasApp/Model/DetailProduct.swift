//
//  DetailProduct.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 13/12/2021.
//

import Foundation
import UIKit

struct DetailProduct {
    let id : String
    let image : String
    let name : String
    let price : Int
    
    init(_ id : String , _ image : String, _ name : String ,_ price : Int){
        self.id = id
        self.image = image
        self.name = name
        self.price = price
    }
}

