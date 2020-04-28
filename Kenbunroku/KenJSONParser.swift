//
//  KenJSONParser.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/28.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import Foundation


open class KenJSONParser {
    
    var content: String
    
    public init(_ content: String) {
        self.content = content
    }
    
    open func parse() throws -> KenFormat {
        let json = self.content.data(using: .utf8)!
              
        let decoder = JSONDecoder()

        let decodedJson: KenFormat?

        do {
            decodedJson = try decoder.decode(KenFormat.self, from: json)
        } catch {
            throw NSError(domain: "given content is invalid Ken format.", code: -1, userInfo: nil)
        }
        
        return decodedJson!
    }
}
