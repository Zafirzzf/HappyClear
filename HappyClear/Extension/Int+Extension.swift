//
//  Int+Extension.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/5/4.
//  Copyright © 2019 周正飞. All rights reserved.
//

import UIKit

extension Int {
    var isZero: Bool {
        return self == 0
    }
    
    var half: Int {
        return self / 2
    }
    
    var abs: Int {
        if self < 0 {
            return 0 - self
        } else {
            return self
        }
    }
    
    var cg: CGFloat {
        return CGFloat(self)
    }
}
