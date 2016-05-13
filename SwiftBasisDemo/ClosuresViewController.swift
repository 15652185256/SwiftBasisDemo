//
//  ClosuresViewController.swift
//  SwiftBasisDemo
//
//  Created by 赵晓东 on 16/5/12.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit
import Foundation

class ClosuresViewController: UIViewController {
    
    let 城市列表 = ["1","22","333","4444","55555"];
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        
        
        //Sort函数用法
        var 新城市列表 = 城市列表.sort({ (字符串1: String, 字符串2: String) -> Bool in
            return 字符串1 > 字符串2
        })
        
        print(新城市列表)
        
        
        新城市列表 = 城市列表.sort({ 字符串1, 字符串2 in return 字符串1 < 字符串2 })
        
        print(新城市列表)
        
        
        新城市列表 = 城市列表.sort({ 字符串1, 字符串2 in 字符串1 > 字符串2 })
        
        print(新城市列表)
        
        
        新城市列表 = 城市列表.sort({ $0 < $1 })
        
        print(新城市列表)
        
        
        新城市列表 = 城市列表.sort(>)
        
        print(新城市列表)
    }
    
    
    //sorted函数
    
    

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
