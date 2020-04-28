//
//  ViewController.swift
//  Example
//
//  Created by Shota Shimazu on 2020/04/19.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import UIKit
import Kenbunroku


class ViewController: UIViewController {

    @IBOutlet weak var readButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        readButton.addTarget(self, action: #selector(readButtonEvent(_:)), for: .touchUpInside)
    }
    
    
    @objc
    func readButtonEvent(_ sender: Any) {
        print("Call Kenbunroku ViewController")
        let nextVC = ExampleReaderViewController()
        self.present(nextVC, animated: true, completion: nil)
    }

}



extension ViewController {
    
    fileprivate func loadSampleFile() -> String {
          if let path: String = Bundle.main.path(forResource: "APISource", ofType: "json") {
              
              do {
                  let content = try String(contentsOfFile: path)
                 // print(" \(content)")
                
                return content
                  
              } catch  {
                  print("Failed to get file content")
              }
              
              
          } else {
              print("File not found")
          }
        
        return ""
    }
}
