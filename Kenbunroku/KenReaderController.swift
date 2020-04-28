//
//  KenComposer.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/23.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

open class KenReaderController: UIViewController {
    
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
   
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    public func loadContent(_ content: String) {
        /*
        let json = content.data(using: .utf8)!
        let decoder = JSONDecoder()
        
        let decodedJson = try! decoder.decode([[String:String]].self, from: json)

        print("@@@@@@@@@@")
        print(decodedJson)
        print("@@@@@@@@@@")
        */
        print(content)
    }
}


extension KenReaderController {
    
    fileprivate func abstractStructureTree() {
        
    }
}
