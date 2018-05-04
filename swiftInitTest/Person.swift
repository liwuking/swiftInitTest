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
        self.init(name: "xx")

        self.name = name
        self.headColor = headColor
        self.food = "meat"
    }
    
    /*designated constructor*/
    init(name:String, headColor: String,food:String) {
        self.name = name
        self.headColor = headColor
        self.food = food

//        super.init()
    }

    init(name:String) {

        self.name = name
        self.headColor = ""
        self.food = ""
//        super.init()
    }
    
}
