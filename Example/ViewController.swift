//
//  ViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2020/04/19.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let html: String = """
           <html>
           <body>
               <h1>Hello, world</h1>
           </body>
           </html>
           """
           
        let data = Data(html.utf8)
        
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
               label.attributedText = attributedString
           }
    }

}

