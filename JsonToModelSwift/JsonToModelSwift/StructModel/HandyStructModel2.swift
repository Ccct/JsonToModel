//
//  HandyStructModel2.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import HandyJSON

struct HandyStructCityModel:HandyJSON {
    
    var cityName:String = ""
    var cityCode:String = ""
    var cityImg:String = ""
}

struct HandyStructDataModel:HandyJSON {
    
    var name:String = ""
    var age:String = ""
    var city:String = ""
}

struct HandyStructModel2:HandyJSON {

    var state:String = ""
    var page:String = ""
    var citys:HandyStructCityModel = HandyStructCityModel()
    var datas:[HandyStructDataModel] = []
}
