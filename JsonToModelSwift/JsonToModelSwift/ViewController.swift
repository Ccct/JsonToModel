//
//  ViewController.swift
//  JsonToModelSwift
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

import UIKit
import KakaJSON
import HandyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //KakaJSON
//        self.KakaSimpleModel()
//        self.KakaSimpleArrModel()
//        self.KakaComplexArrModel()
        
        //HandyJSON
        self.HandySimpleModel()
        self.HandySimpleArrModel()
        self.HandyComplexArrModel()
    }
    
    // MARK: 读取本地json文件
    fileprivate func getJSON(name:String) -> NSDictionary{
        let path = Bundle.main.path(forResource: name, ofType: "json")
        let url = URL(fileURLWithPath: path!)
        do {
            let data = try Data(contentsOf: url)
            let jsonData:Any = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
            return jsonData as! NSDictionary
        } catch _ as Error? {
            print("读取本地数据出现错误!")
            return NSDictionary()
        }
    }
}

// MARK: KakaJSON
extension ViewController{
    
    /// KakaJSON 解析简单模型
    fileprivate func KakaSimpleModel(){
        
        let jsonData = self.getJSON(name: "testJson1")
        
        //struct model
        let smodel:KKStructModel1 = jsonData.kj.model(KKStructModel1.self)!
        print(smodel.state,smodel.page,smodel.age,smodel.head,smodel.name)
        
        //class model
        let cmodel:KKClassModel1 = jsonData.kj.model(type: KKClassModel1.self) as! KKClassModel1
        print(cmodel.state,cmodel.page,cmodel.age,cmodel.head,cmodel.name)
    }
    
    /// KakaJSON 解析模型嵌套数组字典
    fileprivate func KakaSimpleArrModel(){
        
        let jsonData = self.getJSON(name: "testData2")
        
        //struct model
        let smodel:KKStructModel2 = jsonData.kj.model(type: KKStructModel2.self)! as! KKStructModel2
        print(smodel.state,smodel.page,smodel.datas)
        
        //class model
        let cmodel:KKClassModel2 = jsonData.kj.model(type: KKClassModel2.self) as! KKClassModel2
        print(cmodel.state,cmodel.page,cmodel.datas)
    }
    
    /// KakaJSON 解析复杂模型
    fileprivate func KakaComplexArrModel(){
        
        let jsonData = self.getJSON(name: "testJson3")
        
        //struct model
        let smodel:KKStructModel3 = jsonData.kj.model(type: KKStructModel3.self)! as! KKStructModel3
        print(smodel.ssss,smodel.page,smodel.citys,smodel.datas)
        
        //class model
        let cmodel:KKClassModel3 = jsonData.kj.model(type: KKClassModel3.self) as! KKClassModel3
        print(cmodel.ssss,cmodel.page,cmodel.citys,cmodel.datas)
    }
}

// MARK: HandyJSON
extension ViewController{
    
    /// HandyJSON 解析简单模型
    fileprivate func HandySimpleModel(){
        
        let jsonData = self.getJSON(name: "testJson1")
        
        //struct model
        if let smodel = HandyStructModel1.deserialize(from: jsonData) {
            
            print(smodel.state,smodel.page,smodel.age,smodel.head,smodel.name)
        }
        
        //class model
        if let cmodel = HandyClassModel1.deserialize(from: jsonData) {
            
            print(cmodel.state,cmodel.page,cmodel.age,cmodel.head,cmodel.name)
        }
    }
    
    /// HandyJSON 解析模型嵌套数组字典
    fileprivate func HandySimpleArrModel(){
        
        let jsonData = self.getJSON(name: "testData2")
        
        //struct model
        if let smodel = HandyStructModel2.deserialize(from: jsonData) {
            
            print(smodel.state,smodel.page,smodel.citys,smodel.datas)
        }
        
        //class model
        if let cmodel = HandyClassModel2.deserialize(from: jsonData) {
            
            print(cmodel.state,cmodel.page,cmodel.datas)
        }
    }
    
    /// HandyJSON 解析复杂模型
    fileprivate func HandyComplexArrModel(){
        
        let jsonData = self.getJSON(name: "testJson3")
        
        //struct model
        if let smodel = HandyStructModel3.deserialize(from: jsonData) {
            
            print(smodel.ssss,smodel.page,smodel.citys,smodel.datas)
        }
        
        //class model
        if let cmodel = HandyClassModel3.deserialize(from: jsonData) {
            
            print(cmodel.ssss,cmodel.page,cmodel.citys,cmodel.datas)
        }
    }
}
