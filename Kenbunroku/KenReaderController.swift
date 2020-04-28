//
//  KenComposer.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/23.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

open class KenReaderController: UIViewController {

    var source: String?

    var content: KenFormat? = nil

    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        viewWillContentLoad()
        viewDidContentLoad()
        viewWillContentShow()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewDidContentShow()
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    open func viewWillContentLoad() {
        #if DEBUG
            print("[Kenbunroku] sample content will be loaded.")
        #endif
        
        self.source = kenDefaultSource
    }

    open func viewDidContentLoad() {
        self.content = try? KenJSONParser(self.source!).parse()
    }
    
    open func viewWillContentShow() {
        for content in self.content!.body {
            if content.contentType == "Text" {
                let label = UILabel()
                label.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 20)
                label.text = content.content
                
                self.view.addSubview(label)
            }
        }
    }
    
    open func viewDidContentShow() {
        
    }
}
