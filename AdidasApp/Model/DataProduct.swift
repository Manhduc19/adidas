//
//  DataProduct.swift
//  AdidasApp
//
//  Created by Thanh Nguyên Trần on 13/12/2021.
//

import Foundation
import UIKit
let detailList : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"Adizero1","Giay dizero Adios 5 Tokyo", 350 ) ,
    DetailProduct(UUID().uuidString,"Adizero2", "Giay Adizero Adios 6 Paris",550),
    DetailProduct(UUID().uuidString,"Adizero3","Giay Adizero Adios 10" ,400),
    DetailProduct(UUID().uuidString,"Adizero4","Giay Adizero Boston 10",560),
    DetailProduct(UUID().uuidString,"Adizero5","Giay Adizero Boston 5",340),
    DetailProduct(UUID().uuidString,"Adizero6","Giay Adizero Light 7",660)
]

let detailList1 : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"forum1","Giày Cổ Thấp Forum", 750 ) ,
    DetailProduct(UUID().uuidString,"forum2", "Giày Forum Exhibit Low",750),
    DetailProduct(UUID().uuidString,"forum3","Giày Forum Bold HER Studio London" ,440),
    DetailProduct(UUID().uuidString,"forum4","Giày Forum 84 Hi Marvel",520),
    DetailProduct(UUID().uuidString,"forum5","Giày Forum Bold",900),
    DetailProduct(UUID().uuidString,"forum6","Giày Forum Dipped Jeremy Scott",760),
    DetailProduct(UUID().uuidString,"forum7","Giày FORUM 84 LOW SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"forum8","Giày Forum 84 Low",860)
]
let detailList2 : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"superstar1","Giày Superstar OT Tech", 750 ) ,
    DetailProduct(UUID().uuidString,"superstar2","Giày Superstar 360 Disney",750),
    DetailProduct(UUID().uuidString,"superstar3","Giày SUPERSTAR ARIZONA" ,440),
    DetailProduct(UUID().uuidString,"superstar4","Giày SUPERSTAR SIMPSONS SQUISHEE",520),
    DetailProduct(UUID().uuidString,"superstar5","Giày adidas Superstar x LEGO®",900),
    DetailProduct(UUID().uuidString,"superstar6","Giày adidas Dipped Jeremy Scott",760),
    DetailProduct(UUID().uuidString,"superstar7","Giày SUPERSTAR 84 LOW SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"superstar8","Giày SUPERSTAR 84 Low",860),
    DetailProduct(UUID().uuidString,"superstar9","Giày SUPERSTAR 84 LOW SIMPSONS DUFF",780),
    DetailProduct(UUID().uuidString,"superstar10","Giày SUPERSTAR 84 Low",770)
]
let detailList3 : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"1","Giày UltraBoost 21", 750 ) ,
    DetailProduct(UUID().uuidString,"2","Giày Duramo SL",750),
    DetailProduct(UUID().uuidString,"3","Giày UltraBoost 22" ,440),
    DetailProduct(UUID().uuidString,"4","Giày Galaxy 5",520),
    DetailProduct(UUID().uuidString,"5","Giày Alphabounce",900),
    DetailProduct(UUID().uuidString,"6","Giày Ultraboost 4.0 DNA",760),
   DetailProduct(UUID().uuidString,"7","Giày X9000L3",860)
]
let detailList4 : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"dep1","Dép quai ngang Adilette Comfort", 750 ) ,
    DetailProduct(UUID().uuidString,"dep2","Dép adilette Shower",750),
    DetailProduct(UUID().uuidString,"dep3","YEEZY SLIDE ADULTS" ,440),
    DetailProduct(UUID().uuidString,"dep4","ADILETTE LITE",520),
    DetailProduct(UUID().uuidString,"dep5","YEEZY SLIDE 2",900),
    DetailProduct(UUID().uuidString,"dep6","Dép adilette Lite",760),
    DetailProduct(UUID().uuidString,"dep7","Dép YEEZY SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"dep8","Dép YEEZY 84 ",860),
    DetailProduct(UUID().uuidString,"dep9","Dép SUPERYEEZY 84 LOW SIMPSONS DUFF",690)
]
let detailList5 : [DetailProduct] = [
    DetailProduct(UUID().uuidString,"stansmith1","Stan Smith 1", 750 ) ,
    DetailProduct(UUID().uuidString,"stansmith2","Stan Smith 2",750),
    DetailProduct(UUID().uuidString,"stansmith3","Stan Smith 3" ,440),
    DetailProduct(UUID().uuidString,"stansmith4","Stan Smith 4",520),
    DetailProduct(UUID().uuidString,"stansmith5","Stan Smith 5",900),
    DetailProduct(UUID().uuidString,"stansmith6","Stan Smith 6",760),
   DetailProduct(UUID().uuidString,"stansmith7","Stan Smith 7",860)
]

let alldetailList: [DetailProduct] = [
    DetailProduct(UUID().uuidString,"stansmith1","Stan Smith 1", 750 ) ,
    DetailProduct(UUID().uuidString,"stansmith2","Stan Smith 2",750),
    DetailProduct(UUID().uuidString,"stansmith3","Stan Smith 3" ,440),
    DetailProduct(UUID().uuidString,"stansmith4","Stan Smith 4",520),
    DetailProduct(UUID().uuidString,"stansmith5","Stan Smith 5",900),
    DetailProduct(UUID().uuidString,"stansmith6","Stan Smith 6",760),
    DetailProduct(UUID().uuidString,"stansmith7","Stan Smith 7",860),
    DetailProduct(UUID().uuidString,"dep1","Dép quai ngang Adilette Comfort", 750 ) ,
    DetailProduct(UUID().uuidString,"dep2","Dép adilette Shower",750),
    DetailProduct(UUID().uuidString,"dep3","YEEZY SLIDE ADULTS" ,440),
    DetailProduct(UUID().uuidString,"dep4","ADILETTE LITE",520),
    DetailProduct(UUID().uuidString,"dep5","YEEZY SLIDE 2",900),
    DetailProduct(UUID().uuidString,"dep6","Dép adilette Lite",760),
    DetailProduct(UUID().uuidString,"dep7","Dép YEEZY SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"dep8","Dép YEEZY 84 ",860),
    DetailProduct(UUID().uuidString,"dep9","Dép SUPERYEEZY 84 LOW SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"1","Giày UltraBoost 21", 750 ) ,
    DetailProduct(UUID().uuidString,"2","Giày Duramo SL",750),
    DetailProduct(UUID().uuidString,"3","Giày UltraBoost 22" ,440),
    DetailProduct(UUID().uuidString,"4","Giày Galaxy 5",520),
    DetailProduct(UUID().uuidString,"5","Giày Alphabounce",900),
    DetailProduct(UUID().uuidString,"6","Giày Ultraboost 4.0 DNA",760),
    DetailProduct(UUID().uuidString,"7","Giày X9000L3",860),
    DetailProduct(UUID().uuidString,"superstar1","Giày Superstar OT Tech", 750 ) ,
    DetailProduct(UUID().uuidString,"superstar2","Giày Superstar 360 Disney",750),
    DetailProduct(UUID().uuidString,"superstar3","Giày SUPERSTAR ARIZONA" ,440),
    DetailProduct(UUID().uuidString,"superstar4","Giày SUPERSTAR SIMPSONS SQUISHEE",520),
    DetailProduct(UUID().uuidString,"superstar5","Giày adidas Superstar x LEGO®",900),
    DetailProduct(UUID().uuidString,"superstar6","Giày adidas Dipped Jeremy Scott",760),
    DetailProduct(UUID().uuidString,"superstar7","Giày SUPERSTAR 84 LOW SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"superstar8","Giày SUPERSTAR 84 Low",860),
    DetailProduct(UUID().uuidString,"superstar9","Giày SUPERSTAR 84 LOW SIMPSONS DUFF",780),
    DetailProduct(UUID().uuidString,"superstar10","Giày SUPERSTAR 84 Low",770),
    DetailProduct(UUID().uuidString,"forum1","Giày Cổ Thấp Forum", 750 ) ,
    DetailProduct(UUID().uuidString,"forum2", "Giày Forum Exhibit Low",750),
    DetailProduct(UUID().uuidString,"forum3","Giày Forum Bold HER Studio London" ,440),
    DetailProduct(UUID().uuidString,"forum4","Giày Forum 84 Hi Marvel",520),
    DetailProduct(UUID().uuidString,"forum5","Giày Forum Bold",900),
    DetailProduct(UUID().uuidString,"forum6","Giày Forum Dipped Jeremy Scott",760),
    DetailProduct(UUID().uuidString,"forum7","Giày FORUM 84 LOW SIMPSONS DUFF",690),
    DetailProduct(UUID().uuidString,"forum8","Giày Forum 84 Low",860),
    DetailProduct(UUID().uuidString,"Adizero1","Giay dizero Adios 5 Tokyo", 350 ) ,
    DetailProduct(UUID().uuidString,"Adizero2", "Giay Adizero Adios 6 Paris",550),
    DetailProduct(UUID().uuidString,"Adizero3","Giay Adizero Adios 10" ,400),
    DetailProduct(UUID().uuidString,"Adizero4","Giay Adizero Boston 10",560),
    DetailProduct(UUID().uuidString,"Adizero5","Giay Adizero Boston 5",340),
    DetailProduct(UUID().uuidString,"Adizero6","Giay Adizero Light 7",660)
]

var names: [String] = []
var searchNames: [String] = []
