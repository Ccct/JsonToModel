//
//  KKClassModel1.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

class KKClassModel1:NSObject, Convertible {

    var state:String = ""
    var page:String = ""
    var age:String = ""
    var head:String = ""
    var name:String = ""
    
    required override init() {}
}

//也可以这样写：
//class KKClassModel1: Convertible {
//
//    var state:String = ""
//    var page:String = ""
//    var age:String = ""
//    var head:String = ""
//    var name:String = ""
//
//    required init() {}
//}
