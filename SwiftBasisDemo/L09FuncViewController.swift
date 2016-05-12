//
//  L09FuncViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit
import Foundation

class L09FuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        //函数
        sayHello(姓名: "zhaoxd")
        
        let (a,b) = getNums()
        print(a,b)
        
        
        let fun = sayHello
        fun(姓名: "zhaoxd")
        
        //函数带返回值 函数作为常量
        let num = ls([40,12,-5,78,98])
        print("Largest number is: \(num.large) and smallest number is: \(num.small)")
        
        //函数不带返回值
        sum(20, b: 10)
        
        //返回 Optional  类型的函数
        if let bounds = minMax([8, 2, a, 6, 3, 9]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        
        
        
        
        //可变参数
        vari("Swift", "Enumerations", "Closures")
        
        print(求合(12,114,121,121,11))
        print(求合(1,24,3,12))
        
        
        
        
        
        
        
        
        //常量，变量和 I/O 参数
        var no = 2
        var co = 10
        交换值(&no, b1: &co)
        print("Swapped values are \(no), \(co)")

        //变量参数
        居右对齐("00", 长度: 4, 填充字符: "123")
        
        
        
        
        
        //函数类型作为变量
        var 临时 = 两个数相加
        
        print("2加5是\(临时(1,b: 5))")
        
        临时 = 两个数相乘
        
        print("2乘5是\(临时(1,b: 5))")
        
        
        //函数类型作为参数
        显示相乘结果(2, b: 5, 相乘函数: 两个数相乘)
        
        //函数类型作为返回值
        var a1 = 10
        let b1 = 判断加减(a1 > 0)
        while a1 != 0 {
            print(a1)
            a1 = b1(a1)
        }
        
        
        
        
        
        //嵌套函数
        let decrem = calcDecrement(forDecrement: -30)
        print(decrem())
        
        
    }
    
    func sayHello(姓名 name:String){
        print("Hello \(name)")
    }
    
    func getNums()->(Int,Int){
        return (2,3)
    }
    
    
    //函数带返回值
    func ls(array: [Int]) -> (large: Int, small: Int) {
        var lar = array[0]
        var sma = array[0]
        for i in array[1..<array.count] {
            if i < sma {
                sma = i
            } else if i > lar {
                lar = i
            }
        }
        return (lar, sma)
    }
    
    
    //函数不带返回值
    func sum(a: Int, b: Int) {
        let a = a + b
        let b = a - b
        print(a, b)
    }
    
    
    //返回 Optional  类型的函数
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    
    
    
    
    
    //可变参数
    func vari<N>(members: N...){
        for i in members {
            print(i)
        }
    }
    
    func 求合(数字集:Int...) -> Int {
        var 和 = 0
        for 数字 in 数字集 {
            和 += 数字
        }
        return 和
    }
    
    
    
    
    
    
    
    //常量，变量和 I/O 参数
    func 交换值(inout a1: Int, inout b1: Int) {
        let t = a1
        a1 = b1
        b1 = t
    }
    
    //变量参数
    func 居右对齐(var 原文本:String, 长度:Int, 填充字符:String) {
        
        let 要填充的长度 =  长度 - 原文本.characters.count
        
        for _ in 1...要填充的长度 {
            原文本 = 原文本 + 填充字符
        }
        
        print(原文本)
    }
    
    

    
    
    
    
    
    
    
    
    
    
    
    //函数类型作为变量
    func 两个数相加 (a:Int, b:Int) -> Int {
        return a + b
    }

    func 两个数相乘 (a:Int, b:Int) -> Int {
        return a * b
    }
    
    //函数类型作为参数
    func 显示相乘结果 (a:Int, b:Int, 相乘函数: (Int,Int) -> Int) {
        let 结果 = 相乘函数(a, b)
        print("\(a),\(b),\(结果)")
    }
    
    
    //函数类型作为返回值
    func 加一(数字:Int) -> Int {
        return 数字 + 1
    }
    
    func 减一(数字:Int) -> Int {
        return 数字 - 1
    }
    
    func 判断加减(正:Bool) -> ((Int) -> Int) {
        return 正 ? 减一 : 加一
    }
    
    
    
    
    //嵌套函数
    func calcDecrement(forDecrement total: Int) -> () -> Int {
        var overallDecrement = 0
        func decrementer() -> Int {
            overallDecrement -= total
            return overallDecrement
        }
        return decrementer
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
