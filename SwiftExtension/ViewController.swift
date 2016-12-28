//
//  ViewController.swift
//  SwiftExtension
//
//  Created by user on 16/12/28.
//  Copyright © 2016年 mobin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var testArray = [1,2,3,4,5,6,9,0,5,11,43,89,67,98,5]
        
        print("testArray---\(testArray.randomItem)")
        print("testArray---\(testArray.shuffled)")
        print("testArray---\(testArray.sum)")
        print("testArray---\(testArray.average)")
        print("testArray---\(testArray.whithoutDuplicates)")
        
        print("testArray---\(testArray.item(at: 5))")
        print("testArray---\(testArray.firstIndex(of: 5))")
        print("testArray---\(testArray.lastIndex(of: 5))")
        print("testArray---\(testArray.popItem())")
        
        print("testArray---\(testArray.indexs(of: 4))")


        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

