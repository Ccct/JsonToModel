//
//  KKStructModel3.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

struct KKStructPeopleModel:Convertible {
    
    var name:String = ""
    var sex:String = ""
}

struct KKStructDatasModel:Convertible {
    
    var name:String = ""
    var age:String = ""
    var city:String = ""
    var peoples:KKStructPeopleModel = KKStructPeopleModel()
}

struct KKStructModel3:Convertible {
    
    var ssss:String = ""
    var page:String = ""
    var citys:KKStructCityModel = KKStructCityModel()
    var datas:[KKStructDatasModel] = []
    
    // 会传入模型的属性`property`作为参数，返回值就是属性对应的key
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

