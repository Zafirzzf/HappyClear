//
//  ItemColors.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/5/4.
//  Copyright © 2019 周正飞. All rights reserved.
//

import UIKit

enum ItemColors {
    case red
    case blue
    case green
    case yello
    case purple
    
    var colors: [CGColor] {
        switch self {
        case .red:
            return [UIColor("FF3300").cgColor, UIColor("FF6600").cgColor]
        case .blue:
            return [UIColor("99CCFF").cgColor, UIColor("3333FF").cgColor]
        case .green:
            return [UIColor("33FF99").cgColor, UIColor("00CC00").cgColor]
        case .yello:
            return [UIColor("FFCC00").cgColor, UIColor("FFFF00").cgColor]
        case .purple:
            return [UIColor("9900FF").cgColor, UIColor("9966FF").cgColor]
        }
    }
}

extension ItemColors: Equatable {
    
}
