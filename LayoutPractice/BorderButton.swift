//
//  BorderButton.swift
//  LayoutPractice
//
//  Created by Horvath, Mate on 2018. 10. 09..
//  Copyright © 2018. Finastra. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
