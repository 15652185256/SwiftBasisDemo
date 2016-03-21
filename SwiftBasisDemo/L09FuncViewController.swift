//
//  L09FuncViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L09FuncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //函数
        sayHello("zhaoxd")
        
        let (a,b) = getNums()
        print(a,b)
        
        
        let fun = sayHello
        fun("zhaoxd")
        
        //函数带返回值
        let num = ls([40,12,-5,78,98])
        print("Largest number is: \(num.large) and smallest number is: \(num.small)")
        
        //函数不带返回值
        sum(20, b: 10)
        
        //返回 Optional  类型的函数
        if let bounds = minMax([8, 2, a, 6, 3, 9]) {
            print("min is \(bounds.min) and max is \(bounds.max)")
        }
        
        
        //参数可变型参数
        vari("Swift", "Enumerations", "Closures")
        
        //常量，变量和 I/O 参数
        var no = 2
        var co = 10
        temp(&no, b1: &co)
        print("Swapped values are \(no), \(co)")
        
        //嵌套函数
        let decrem = calcDecrement(forDecrement: -30)
        print(decrem())
    }
    
    func sayHello(name:String){
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
    
    
    //参数可变型参数
    func vari<N>(members: N...){
        for i in members {
            print(i)
        }
    }
    
    
    //常量，变量和 I/O 参数
    func temp(inout a1: Int, inout b1: Int) {
        let t = a1
        a1 = b1
        b1 = t
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
