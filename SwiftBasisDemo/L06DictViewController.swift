//
//  L06DictViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L06DictViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建一个字典
        var dict = ["name":"zhaoxd","age":24];
        print(dict)
        
        //添加
        dict["sex"] = "男"
        print(dict)
        
        //修改
        dict.updateValue(25, forKey: "age")
        print(dict)
        
        //删除
        dict.removeValueForKey("sex")
        print(dict)
        
        //获得键对应的值
        let value = dict["name"];
        print(value)
        
        //遍历 for in 字典  会以元组(键，值)的形式返回
        for (key,value) in dict
        {
            print("键:\(key) 值:\(value)")
        }
        
        for tuples in dict
        {
            print("键:\(tuples.0) 值:\(tuples.1)")
        }
        
        for value in dict.values
        {
            print("value=:\(value)");
        }
        
        
        //通过构造方法创建字典
        var namesOfIntegers = Dictionary<Int, String>()
        namesOfIntegers[121]="121"
        print(namesOfIntegers)
        
        
        //字典类型的赋值和拷贝行为
        /*
        注意：字典和数组的拷贝是不同的
        
        1.无论何时将一个字典实例赋给一个常量或变量，或者传递给一个函数或方法，这个字典会即会在赋值或调用发生时被拷贝。
        
        2.如果字典实例中所储存的键(keys)和/或值(values)是值类型(结构体或枚举)，当赋值或调用发生时，它们都会被拷贝。相反，如果键(keys)和/或值(values)是引用类型，被拷贝的将会是引用，而不是被它们引用的类实例或函数
        */
        
        var student2=dict;  // 字典赋值
        
        print("student2 为:\(student2)");
        
        student2.updateValue(12345,forKey:"小明");
        
        print("student2 为:\(student2) ");
        
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
