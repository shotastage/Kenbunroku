//
//  FontStyler.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/05/09.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@resultBuilder
public struct KenStyleBuilder {
    public static func buildBlock() -> Any {

        return "Any"
    }
}

public struct KenFontStyler {

    @discardableResult
    public init(@KenStyleBuilder _ builder: () -> [NSAttributedString.Key: Any]) {
            let stringAttributes: [NSAttributedString.Key: Any] = [
                      .foregroundColor: UIColor.black,
                      .font: UIFont.boldSystemFont(ofSize: 40.0),
                  ]

        builder()
    }
}
