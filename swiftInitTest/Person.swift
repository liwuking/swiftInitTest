//
//  Person.swift
//  swiftInitTest
//
//  Created by lbe on 2018/5/4.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

/***************  init方法原则
1, 一个指定构造器必须调用它直系父类的一个指定构造器。
2, 一个便利构造器必须调用这个类自身的另一个构造器。
3, 一个便利构造器最终一定会调用一个指定构造器。
 */

/*
 Swift 编译器会做以下4个安全性检测，来确保两步初始化正确进行：
 
 Safety check 1, 一个 designated initializer 在向上委托给它的父类构造器之前，必须确保它的类所声明的所有属性都已被初始化
 Safety check 2 一个 designated initializer 在给一个继承的属性赋值之前，先要向上委托给父类的一个构造器，然后再给这个继承的属性赋值。不然，这个新值会被父类构造器重写
 Safety check 3 一个 convenience initializer 最终必须委托给 designated initializer 构造器，来给所有属性赋值。
 Safety check 4 在初始化第一步完成之前，构造器不能调用任何一个实例方法，读取实例属性的值，或作为值访问 self
 当一个 designated或convenience initializer 被调用时，便开始了初始化工作。
 
 */


/******** 使用
 指定构造器需要把所有的属性初始化好，并让用户自己传递这些属性的值，那便利构造器就是把其中几个属性硬编码了，这样我们就能用尽量少的参数去构造一个相同的对象了。通常，我们用便利构造器将对象用一些默认值进行初始化来让它们适合某种使用场景。
 */
class Person: NSObject {

    //属性值只能在designated contructor 初始化
    var name: String// = ""
    var headColor:String// = ""
    var food: String// = ""
    
    /*convenience contructor 原则3*/
//    convenience init(name:String, headColor: String) {
//        self.init(name: name, headColor: headColor,food:"egg")
//    }
    
    //原则3
    convenience init(name:String, headColor: String) {
        self.init(name: name, headColor: headColor, food: "xxxxxx")
    }
    
    /*designated constructor*/
    init(name:String, headColor: String,food:String) {
        self.name = name
        self.headColor = headColor
        self.food = food

//        super.init()
    }

//    init(name:String) {
//
//        self.name = name
//        self.headColor = ""
//        self.food = ""
////        super.init()
//    }
    
}

class superPerson: Person {
    var energy:String
    
    init(energy: String) {
        
        self.energy = "1000" //不符合Safety check 1
        //self.headColor = "superHeadColor" //不符合Safety check 2
        super.init(name: "sname", headColor: "sheadColor", food: "sFood")
        self.name = "superName"
        //self.energy = "1000" //不符合Safety check 1
    }
}







