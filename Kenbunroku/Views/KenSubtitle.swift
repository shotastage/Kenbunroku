//
//  KenSubtitle.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/28.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

open class KenSubtitle: KenLabel {
    
    public let height: CGFloat = 20
    
    override func compose() {
        super.compose()
        
        let stringAttributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.black,
            .font : UIFont.boldSystemFont(ofSize: 20.0)
        ]
        let string = NSAttributedString(string: self.text ?? "No text", attributes: stringAttributes)
        self.attributedText = string
    }
}
