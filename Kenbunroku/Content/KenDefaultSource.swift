//
//  KenDefaultSource.swift
//  Kenbunroku
//
//  Created by Shota Shimazu on 2020/04/28.
//  Copyright © 2020 Shota Shimazu. All rights reserved.
//

import Foundation

public let kenDefaultSource: String = """
{
    "Head": [
        {
            "KenMeta": "System",
            "Message": "System Loaded Content"
        }
    ],
    "Body": [
        {
            "Block": "Title",
            "Content": "Content Not Found",
            "FontSize": 20,
            "FontWeight": 500,
            "FontColor": "#333"
        },
        {
            "Block": "Subtitle",
            "Content": "Kenbunroku No Content",
            "FontSize": 12,
            "FontWeight": 500,
            "FontColor": "orange"
        },
        {
            "Block": "Paragrapgh",
            "Content": "There is no content loaded! Please set Kenbunroku content before appear KenReader.",
            "FontSize": 11,
            "FontWeight": 400,
            "FontColor": "#333"
        }
    ]
}
"""
