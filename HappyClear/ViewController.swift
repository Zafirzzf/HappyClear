//
//  ViewController.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/4/30.
//  Copyright © 2019 周正飞. All rights reserved.
//7yu

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        view.addSubview(TotalContainer(kind: .love))
    }
}

