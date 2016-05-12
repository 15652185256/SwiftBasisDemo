//
//  L07LoopViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L07LoopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        //循环
        var arr = [String]()
        
        for index in 0...100{
            arr.append("Item\(index)")
        }
        
//        print(arr)
//        
//        for value in arr{
//            print(value)
//        }
        
        
        var i = 0
        while i<arr.count {
            print(arr[i])
            i++
        }
        
        
        
        var dict = ["name":"zhaoxd","age":25]
        for (key,value) in dict {
            print(key,value)
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
