//
//  ViewController.swift
//  swiftInitTest
//
//  Created by lbe on 2018/5/4.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person(name: "xxx")
        print(p.name + p.headColor)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

