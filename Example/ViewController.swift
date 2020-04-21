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
           <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
           <html>
           <head>
           <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
           <meta http-equiv="Content-Style-Type" content="text/css">
           <title></title>
           <meta name="Generator" content="Cocoa HTML Writer">
           <meta name="CocoaVersion" content="1894.4">
           <style type="text/css">
           p.p1 {margin: 0.0px 0.0px 8.0px 0.0px; font: 30.0px 'Hiragino Sans GB'; color: #000000}
           p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'Helvetica Neue'; color: #000000; min-height: 14.0px}
           p.p3 {margin: 0.0px 0.0px 8.0px 0.0px; font: 20.0px 'Hiragino Sans GB'; color: #ec5c07}
           p.p4 {margin: 0.0px 0.0px 8.0px 0.0px; font: 12.0px 'Helvetica Neue'; color: #000000; min-height: 14.0px}
           p.p5 {margin: 0.0px 0.0px 0.0px 0.0px; font: 18.0px 'Hiragino Sans GB'; color: #000000}
           p.p6 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px 'Helvetica Neue'; color: #000000; min-height: 12.0px}
           p.p7 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px 'Hiragino Sans GB'; color: #000000}
           span.s1 {font-kerning: none}
           span.s2 {font: 11.0px 'Helvetica Neue'; font-kerning: none}
           </style>
           </head>
           <body>
           <p class="p1"><span class="s1"><b>見聞録ストーリーテスト</b></span></p>
           <p class="p2"><span class="s1"></span><br></p>
           <p class="p3"><span class="s1"><b>地域の見聞録</b></span></p>
           <p class="p4"><span class="s1"></span><br></p>
           <p class="p2"><span class="s1"></span><br></p>
           <p class="p5"><span class="s1"><b>歴史</b></span></p>
           <p class="p6"><span class="s1"></span><br></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p><p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p><p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           <p class="p7"><span class="s1">この地域は古代は</span><span class="s2">Bhaa</span><span class="s1">氏が納める領域でした。</span><span class="s2">Bhaa</span><span class="s1">国では、</span><span class="s2">Pinster</span><span class="s1">達が暮らしており目当ての場所やお気に入りの場所に巻物を埋めたという歴史があります。</span></p>
           <p class="p7"><span class="s1">近年、</span><span class="s2">Bhaa</span><span class="s1">国では各地で</span><span class="s2">Pinster</span><span class="s1">達が埋めたと思われる巻物が数多く発見されています。</span></p>
           </body>
           </html>
           """

        label.sizeToFit()
        
        let data = Data(html.utf8)

        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
               label.attributedText = attributedString
           }
    }

}

