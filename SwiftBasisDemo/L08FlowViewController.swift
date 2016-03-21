//
//  L08FlowViewController.swift
//  Swifit基础
//
//  Created by 赵晓东 on 16/3/16.
//  Copyright © 2016年 ZXD. All rights reserved.
//

import UIKit

class L08FlowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //流程控制
        for index in 0...100 {
            if index%2==0 {
                print(index)
            }
        }
        
        //可选变量
        var myName:String?="zhaoxd"
        myName = nil
        
        if let name = myName {
            print(name)
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
