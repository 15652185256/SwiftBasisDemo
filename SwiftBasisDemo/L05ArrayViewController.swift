//
//  L05ArrayViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L05ArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建数组
        var arr = ["Hello",100,2.30]
        print(arr)
        
        //创建某种类型的空数组
        var arr1 = []
        var arr2 = [String]()
        arr2 = ["121","12311231"]
        print(arr2)
        
        //创建一个给定的大小，并用初始值的数组的语法
        var someArray = [String](count: 3, repeatedValue: "InitialValue")
        
        //创建具有3个元素并初始值为零的 int 类型空数组
        var someInt = [Int](count: 2, repeatedValue: 0)
        print(someInt)
        
        //创建三个元素的数组，并指定三个值的数组
        var someInts:[Int] = [10, 20, 30]
        print(someInts)
        
        
        
        
        //访问数组
        var someInt1 = [Int](count: 3, repeatedValue: 106711)
        var someVar1 = someInt1[0]
        
        print( "Value of first element is \(someVar1)" )
        print( "Value of second element is \(someInt1[1])" )
        print( "Value of third element is \(someInt1[2])" )
        
        
        //修改数组
        var someInt2 = [Int]()
        
        someInt2.append(20)
        someInt2.append(30)
        someInt2 += [40]
        
        var someVar2 = someInt2[0]
        
        print( "Value of first element is \(someVar2)" )
        print( "Value of second element is \(someInt2[1])" )
        print( "Value of third element is \(someInt2[2])" )
        
        someInt2[2] = 50
        print( "Value of third element is \(someInt2[2])" )
        
        
        
        
        //迭代/遍历数组
        var someStrs = [String]()
        
        someStrs.append("Apple")
        someStrs.append("Amazon")
        someStrs += ["Google"]
        
        for value in someStrs {
            print(value)
        }
        
        
        
        //两个数组相加
        var intsA = [Int](count:2, repeatedValue: 2)
        var intsB = [Int](count:3, repeatedValue: 1)
        
        var intsC = intsA + intsB
        
        for item in intsC {
            print(item)
        }
        
        
        
        //count 属性
        var intsA1 = [Int](count:2, repeatedValue: 2)
        var intsB1 = [Int](count:3, repeatedValue: 1)
        
        var intsC1 = intsA1 + intsB1
        
        print("Total items in intsA = \(intsA1.count)")
        print("Total items in intsB = \(intsB1.count)")
        print("Total items in intsC = \(intsC1.count)")
        
        
        
        
        //空属性
        var intsA2 = [Int](count:2, repeatedValue: 2)
        var intsB2 = [Int](count:3, repeatedValue: 1)
        var intsC2 = [Int]()
        
        print("intsA.isEmpty = \(intsA2.isEmpty)")
        print("intsB.isEmpty = \(intsB2.isEmpty)")
        print("intsC.isEmpty = \(intsC2.isEmpty)")
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
