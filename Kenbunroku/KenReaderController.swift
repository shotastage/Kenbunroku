//
//  KenComposer.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/23.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

open class KenReaderController: UIViewController {

    ///
    /// Sources
    var source: String?

    var content: KenFormat? = nil
    
    var usedHeight: CGFloat = 0
    
    var letterPadding: CGFloat = 5

    var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    var registeredKenLabels: Array<KenLabel>?

    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.addSubview(scrollView)
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
        self.scrollView.frame = CGRect(x: 15, y: 20, width: self.view.bounds.width - 30, height: self.view.bounds.height - 20)
    }

    open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


//
// Ken Life Cycle
//
extension KenReaderController {
    
    public func viewWillContentLoad() {
         #if DEBUG
             print("[Kenbunroku] sample content will be loaded.")
         #endif
         
         self.source = kenDefaultSource
     }

    public func viewDidContentLoad() {
         self.content = try? KenJSONParser(self.source!).parse()
     }
     
    public func viewWillContentShow() {
         for content in self.content!.body {
             if content.contentType == "Text" && content.block == "Title" {
                 let label = KenTitle()
                 label.frame = CGRect(x: 0, y: usedHeight, width: self.view.bounds.width, height: label.height)
                 label.text = content.content
                 usedHeight += label.height + letterPadding
                 self.scrollView.addSubview(label)
             }
             
             if content.contentType == "Text" && content.block == "Subtitle" {
                 let label = KenSubtitle()
                 label.frame = CGRect(x: 0, y: usedHeight, width: self.view.bounds.width, height: 20)
                 label.text = content.content
                 usedHeight += 20 + letterPadding
                 self.scrollView.addSubview(label)
             }
         }
     }
     
    public func viewDidContentShow() {
         
     }
}
