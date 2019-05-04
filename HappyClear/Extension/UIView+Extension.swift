//
//  UIView+Extension.swift
//  HappyClear
//
//  Created by 周正飞 on 2019/5/4.
//  Copyright © 2019 周正飞. All rights reserved.
//

import UIKit

extension UIView {
    /// 添加某颜色的渐变色
    func addGradientLayer(with colors: [CGColor]) {
        
        guard let gradientLayers = self.layer.sublayers?.filter({ $0 is CAGradientLayer }) as? [CAGradientLayer] else {
            return
        }
        if gradientLayers.count > 0 {
            gradientLayers.first?.colors = colors
        } else {
            let layer = CAGradientLayer()
            layer.frame = self.bounds
            layer.colors = colors
            layer.startPoint = CGPoint.zero
            layer.endPoint = CGPoint(x: 1, y: 0)
            self.layer.insertSublayer(layer, at: 0)
        }
    }
}
