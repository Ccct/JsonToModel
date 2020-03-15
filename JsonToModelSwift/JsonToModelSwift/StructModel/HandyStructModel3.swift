//
//  HandyStructModel3.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import HandyJSON

struct HandyPeopleModel:HandyJSON {
    
    var name:String = ""
    var sex:String = ""
}

struct HandyDatasModel : HandyJSON {
    
    var name:String = ""
    var age:String = ""
    var city:String = ""
    var peoples:HandyPeopleModel = HandyPeopleModel()
}

struct HandyStructModel3:HandyJSON {
    var ssss:String = ""
    var page:String = ""
    var citys:HandyStructCityModel = HandyStructCityModel()
    var datas:[HandyDatasModel] = []
    
    mutating func mapping(mapper: HelpingMapper) {
        
        // 将json中的state这个key 转换为 ssss 属性

        // 写法一
        mapper <<< self.ssss <-- "state"
        
        // 写法二
//        mapper.specify(property: &ssss, name: "state")
    }
}
