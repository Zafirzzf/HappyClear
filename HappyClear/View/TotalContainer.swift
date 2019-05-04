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
    }
    
}

class ItemContainer: UIView {
    required init?(coder aDecoder: NSCoder) { return nil }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.black.withAlphaComponent(0.5)
        layer.cornerRadius = 5
        layer.borderColor = UIColor("333366").cgColor
        layer.borderWidth = 2
        layer.masksToBounds = true
    }
}
