//
//  KKClassModel2.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

class KKClassCityModel:NSObject,Convertible {
    
    var cityName:String = ""
    var cityCode:String = ""
    var cityImg:String = ""
    
    required override init() {}
}

class KKClassDataModel: NSObject,Convertible {

    var name:String = ""
    var age:String = ""
    var city:String = ""
    
    required override init() {}
}

class KKClassModel2: NSObject,Convertible {

    var state:String = ""
    var page:String = ""
    var citys:KKClassCityModel = KKClassCityModel()
    var datas:[KKClassDataModel] = []
    
    required override init() {}
}
