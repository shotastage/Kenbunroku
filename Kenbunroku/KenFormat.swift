//
//  KenFormat.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/28.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import Foundation

public struct KenFormat: Codable {
    let head: [String]
    let body: [KenBlock]
}

//
// Kenbunroku Content Block Struct
//

public struct KenBlock: Codable {
    let block: String
    let content: String
    let contentType: String
    let fontStyle: KenFontStyle?
}

public struct KenFontStyle: Codable {
    let fontSize: String
    let fontColor: String
    let fontFamily: String
}

//
// Kenbunroku Head Block
//

public struct KenHeadBasic: Codable {

}
