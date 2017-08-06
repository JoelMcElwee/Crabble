//
//  FrostyTabBar.swift
//  Crabble
//
//  Created by Joel McElwee on 8/2/17.
//  Copyright © 2017 Joel McElwee. All rights reserved.
//

import UIKit

class FrostyTabBar: UITabBar {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let frost = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        frost.frame = bounds
        frost.autoresizingMask = .flexibleWidth
        insertSubview(frost, at: 0)
    }
}
