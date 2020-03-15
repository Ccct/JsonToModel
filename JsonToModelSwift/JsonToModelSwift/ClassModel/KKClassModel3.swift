//
//  KKClassModel3.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

class KKClassPeopleModel:NSObject,Convertible {
    
    var name:String = ""
    var sex:String = ""
    
    required override init() {}
}

class KKClassDatasModel:NSObject,Convertible {
    
    var name:String = ""
    var age:String = ""
    var city:String = ""
    var peoples:KKClassPeopleModel = KKClassPeopleModel()
    
    required override init() {}
}


class KKClassModel3: NSObject,Convertible {

    var ssss:String = ""
    var page:String = ""
    var citys:KKClassCityModel = KKClassCityModel()
    var datas:[KKClassDatasModel] = []
    
    required override init() {}
    
    func kj_modelKey(from property: Property) -> ModelPropertyKey {
        
        // 根据属性名来返回对应的key
        switch property.name {
            
        // 模型的`ssss`属性 对应 JSON中的`state`
        case "ssss": return "state"
            
        // 模型剩下的其他属性，直接用属性名作为JSON的key（属性名和key保持一致）
        default: return property.name
        }
    }
}
