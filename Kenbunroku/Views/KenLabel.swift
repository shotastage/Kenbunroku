//
//  KenLabel.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/28.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit



open class KenLabel: UILabel {
    
    let style: KenFontStyle? = nil
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        compose()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override func awakeFromNib() {
        super.awakeFromNib()
        compose()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        compose()
    }

    func compose() { }
}
