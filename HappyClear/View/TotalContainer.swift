//
//  TotalContainer.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/5/4.
//  Copyright © 2019 周正飞. All rights reserved.
//

import UIKit

class TotalContainer: UIView {
    required init?(coder aDecoder: NSCoder) { return nil }
    
    let canvasKind: CanvasKind
    lazy var itemsPoint: [CGRect] = self.canvasKind.itemsPoint.frames
    
    init(kind: CanvasKind) {
        self.canvasKind = kind
        super.init(frame: .zero)
        setup()
    }
    
    func setup() {
        canvasKind.itemsPoint.frames.forEach {
            let itemContainer = ItemContainer(frame: $0)
            addSubview(itemContainer)
        }
        let maxX = itemsPoint.max { $0.origin.x < $1.origin.x }!.origin.x + itemSize
        let maxY = itemsPoint.max { $0.origin.y < $1.origin.y }!.origin.y + itemSize
        frame.size.width = maxX
        frame.size.height = maxY
        center = CGPoint(x: ScreenWidth.half, y: ScreenHeight.half)
    }
    
}

class ItemContainer: UIView {
    required init?(coder aDecoder: NSCoder) { return nil }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black.withAlphaComponent(0.5)
        layer.borderColor = UIColor("333366").withAlphaComponent(0.5).cgColor
        layer.borderWidth = 1
        layer.masksToBounds = true
    }
}
