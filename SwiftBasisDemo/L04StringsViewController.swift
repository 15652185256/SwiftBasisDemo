//
//  L04StringsViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L04StringsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建字符串
        var i = 200
        var str = "Hello"
        
        //空字符串
        var stringA = ""
        
        if stringA.isEmpty {
            print( "stringA is empty" )
        } else {
            print( "stringA is not empty" )
        }
        
        let stringB = String()
        
        if stringB.isEmpty {
            print( "stringB is empty" )
        } else {
            print( "stringB is not empty" )
        }

        //字符串链接
        str = str + " World"
        str = "\(str),zhaoxd,\(i)"
        print(str)
        
        var stringA1 = "Hello, Swift!"
        stringA1 += "--Readers--"
        print( stringA1 )
        

        
        //字符串插值
        var varA   = 20
        let constA = 100
        var varC:Float = 20.0
        
        var stringA2 = "\(varA) times \(constA) is equal to \(varC * 100)"
        print( stringA2 )
        
        
        //字符串长度
        var varA1   = "Hello, Swift!"
        print( "\(varA1), length is \(varA1.characters.count)" )
        
        
        //字符串比较
        var varA2   = "Hello, Swift!"
        var varB2   = "Hello, World!"
        
        if varA2 == varB2 {
            print( "\(varA2) and \(varB2) are equal" )
        } else {
            print( "\(varA2) and \(varB2) are not equal" )
        }
        
        
        //Unicode字符串
        var unicodeString   = "Dog‼"
        
        print("UTF-8 Codes: ")
        for code in unicodeString.utf8 {
            print("\(code) ")
        }
        
        print("\n")
        
        print("UTF-16 Codes: ")
        for code in unicodeString.utf16 {
            print("\(code) ")
        }
        
        /*
        字符串函数和操作符
        
        isEmpty
        返回一个布尔值，确定该字符串是否为空
        
        
        hasPrefix(prefix: String)
        函数检查给定的参数字符串是否以 string 为前缀
        
        
        hasSuffix(suffix: String)
        函数检查给定的参数字符串是否以 string 为后缀
        
        
        toInt()
        函数将数字字符串值转换成整数
        
        
        count()
        全局函数用来计算字符串中的字符数
        
        
        utf8
        属性返回一个字符串的 UTF-8 表示
        
        
        utf16
        属性返回一个字符串的 UTF-16 表示
        
        
        unicodeScalars
        属性返回一个字符串的 Unicode 标表示
        
        
        +
        运算符用来连接两个字符串，或者一个字符串和一个字符或两个字符
        
        
        +=
        操作符要追加一个字符串或字符到一个现有的字符串
        
        
        ==
        操作符以确定两个字符串是否相等
        
        
        <
        操作符进行逐一比较，计算以确定一个字符串是否为小于另一个
        
        
        */
        
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
