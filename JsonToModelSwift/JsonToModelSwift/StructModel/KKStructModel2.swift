//
//  KKStructModel2.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

struct KKStructCityModel:Convertible {
    
    var cityName:String = ""
    var cityCode:String = ""
    var cityImg:String = ""
}

struct KKStructDataModel:Convertible {
    
    var name:String = ""
    var age:String = ""
    var city:String = ""
}

struct KKStructModel2:Convertible {
    
    var state:String = ""
    var page:String = ""
    var citys:KKStructCityModel = KKStructCityModel()
    var datas:[KKStructDataModel] = []
}
