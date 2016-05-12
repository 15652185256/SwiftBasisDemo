//
//  L10OOViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/17.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L10OOViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        //面向对象
        let hi = Hi()
        hi.sayHi()
        
        let h = Hello(name: "苗小喵")
        h.sayHi()
        
    }
    
    //定义类
    class Hi {
        func sayHi(){
            print("Hi zhaoxd")
        }
    }
    
    //继承
    class Hello:Hi {
        //构造
        var _name:String
        init(name:String) {
            self._name=name
        }
        //重写
        override func sayHi(){
            print("Hello \(self._name)")
        }
    }
    
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
