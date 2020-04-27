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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        loadSampleFile()
    }

}



extension ViewController {
    
    fileprivate func loadSampleFile() {
          if let path: String = Bundle.main.path(forResource: "APISource", ofType: "json") {
              
              do {
                  // ファイルの内容を取得する
                  let content = try String(contentsOfFile: path)
                  print(" \(content)")
                 // testLabel.text = content
                  
              } catch  {
                  print("ファイルの内容取得時に失敗")
              }
              
              
          } else {
              print("指定されたファイルが見つかりません")
          }
    }
}
