//
//  ViewController.swift
//  NotiHomework
//
//  Created by SolChan Ahn on 2018. 2. 23..
//  Copyright © 2018년 SolChan Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let result = [
            ["name": "ㅁㄴㅇㄹ", "time": "11 50", "isDone": false],
            [:],
            [:],
            [:],
            [:],
            [:],
        ]
        
        UserDefaults.standard.set(result, forKey: "result")
        var array = UserDefaults.standard.array(forKey: "result")
        array?.append(<#T##newElement: Any##Any#>)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

