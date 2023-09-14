//
//  Cover.swift
//  Playlist
//
//  Created by user241334 on 9/13/23.
//

import Foundation

struct Cover: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}
