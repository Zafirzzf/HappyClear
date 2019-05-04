//
//  CanvasKind.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/5/4.
//  Copyright © 2019 周正飞. All rights reserved.
//

import UIKit

typealias CanvasPoint = (x: Int, y: Int)
/// 画布类型/形状
enum CanvasKind {
    case love
    
    var itemsPoint: [CanvasPoint] {
        switch self {
        case .love:
            var points: [CanvasPoint] = []
            let rows = 7
            for i in 0 ..< rows {
                for j in 0 ..< rows {
                    if i.isZero && (j.isZero || j == rows.half || j == rows - 1) ||
                        i > rows.half && ((i - rows.half) >= (rows - j) || (i - rows.half) > j) {
                        continue
                    } else {
                        points.append(CanvasPoint(j, i))
                    }
                    
                }
            }
            return points
        }
    }
}

extension Array where Element == CanvasPoint {
    var frames: [CGRect] {
        return map { CGRect(x: $0.x.cg * itemSize, y: $0.y.cg * itemSize, width: itemSize, height: itemSize)}
    }
}
