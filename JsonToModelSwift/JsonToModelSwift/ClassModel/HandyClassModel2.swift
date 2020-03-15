//
//  HandyClassModel2.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import HandyJSON

class HandyClassCityModel:HandyJSON {
    
    var cityName:String = ""
    var cityCode:String = ""
    var cityImg:String = ""
    
    required init() {}
}

class HandyClassDataModel: HandyJSON {

    var name:String = ""
    var age:String = ""
    var city:String = ""
    
    required init() {}
}

class HandyClassModel2: HandyJSON {

    var state:String = ""
    var page:String = ""
    var citys:HandyClassCityModel = HandyClassCityModel()
    var datas:[HandyClassDataModel] = []
    
    required init() {}
}
