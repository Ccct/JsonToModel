//
//  KKStructModel1.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

import KakaJSON

struct KKStructModel1:Convertible {

    var state:String = ""
    var page:String = ""
    var age:String = ""
    var head:String = ""
    var name:String = ""
}

//也可以这样写：
//struct KKStructModel1:Convertible {
//
//    var state:String?
//    var page:String?
//    var age:String?
//    var head:String?
//    var name:String?
//
//    init() {
//        self.state = ""
//        self.page = ""
//        self.age = ""
//        self.head = ""
//        self.name = ""
//    }
//}
